// Session: a class meeting with title and content
#let session(title, body) = (type: "session", title: title, body: body)

// Holiday: a single day off
#let holiday(title, date) = (type: "holiday", title: title, date: date)

// Holiday range: multiple consecutive days off
#let holiday-range(title, start, end) = (type: "holiday-range", title: title, start: start, end: end)

// Date note: mark a specific date with an exam, assignment, or other event
#let date-note(title, date, kind: "event", body: none) = (
  type: "date-note", 
  title: title, 
  date: date, 
  kind: kind,
  body: body
)

// Build a date → holiday-name lookup map
#let build-holiday-map(holidays) = {
  let map = (:)
  for h in holidays {
    if h.type == "holiday" {
      map.insert(h.date.display("[year]-[month]-[day]"), h.title)
    } else if h.type == "holiday-range" {
      let d = h.start
      while d <= h.end {
        map.insert(d.display("[year]-[month]-[day]"), h.title)
        d = d + duration(days: 1)
      }
    }
  }
  map
}

// Build a date → special-event lookup map (date notes)
#let build-date-note-map(events) = {
  let map = (:)
  for e in events {
    if e.type == "date-note" {
      map.insert(e.date.display("[year]-[month]-[day]"), e)
    }
  }
  map
}

// Advance to the next class day
#let next-class-day(date, class-days) = {
  let d = date + duration(days: 1)
  while not (d.weekday() in class-days) {
    d = d + duration(days: 1)
  }
  d
}

// Main schedule function
#let schedule(
  start: datetime(year: 2026, month: 1, day: 6),
  days: (1, 3),
  holidays: (),
  events: (),
  important-dates: (),
  render-week: week => [== Week #week],
  render-session: (date, session, week) => [
    === #date.display("[weekday repr:short], [month repr:short] [day]"): *#session.title* \
    #session.body
  ],
  render-holiday: (date, name) => [
    === #date.display("[weekday repr:short], [month repr:short] [day]") -- *NO CLASS: #name*
  ],
  render-date-note: (date, note, week) => {
    let (prefix, color) = if note.kind == "exam" {
      ("🎓 EXAM", rgb("#fed6c7"))
    } else if note.kind == "assignment" {
      ("📝 DUE", rgb("#dbeafe"))
    } else {
      ("📌 " + upper(note.kind), rgb("#f3f4f6"))
    }
    block(
      fill: color,
      inset: 8pt,
      radius: 4pt,
      width: 100%,
      [
        === #date.display("[weekday repr:short], [month repr:short] [day]"): *#prefix: #note.title* \
        #if note.body != none { note.body }
      ]
    )
  },
) = {
  let holiday-map = build-holiday-map(holidays)
  let date-note-map = build-date-note-map(important-dates)
  
  // Find first class day
  let current = start
  while not (current.weekday() in days) {
    current = current + duration(days: 1)
  }

  let week = 0
  let last-week = 0
  let prev-session-date = start

  for event in events {
    // Handle date-notes: check all dates between previous session and current for date-notes
    if event.type == "date-note" {
      continue
    }

    // Check if current date is a holiday (skip holidays first)
    let date-str = current.display("[year]-[month]-[day]")
    while date-str in holiday-map {
      // Calculate week for holiday
      let days-since-start = (current - start).days()
      week = int((days-since-start + start.weekday() - 1) / 7) + 1
      if render-week != none and week != last-week {
        render-week(week)
        last-week = week
      }
      render-holiday(current, holiday-map.at(date-str))
      current = next-class-day(current, days)
      date-str = current.display("[year]-[month]-[day]")
    }

    // Calculate week number for the session
    let days-since-start = (current - start).days()
    week = int((days-since-start + start.weekday() - 1) / 7) + 1

    // Render week header if new week
    if render-week != none and week != last-week {
      render-week(week)
      last-week = week
    }

    // Check for date-notes between prev-session-date and current
    let check-date = prev-session-date
    while check-date <= current {
      let check-str = check-date.display("[year]-[month]-[day]")
      if check-str in date-note-map {
        let note = date-note-map.at(check-str)
        let note-days = (check-date - start).days()
        let note-week = int((note-days + start.weekday() - 1) / 7) + 1
        render-date-note(check-date, note, note-week)
      }
      check-date = check-date + duration(days: 1)
    }

    // Check if current date has a date-note (replaces session)
    date-str = current.display("[year]-[month]-[day]")
    if date-str in date-note-map {
      render-date-note(current, date-note-map.at(date-str), week)
    } else {
      // Render the regular session
      render-session(current, event, week)
    }
    
    prev-session-date = current
    current = next-class-day(current, days)
  }

  // Render any remaining date-notes after the last session (without week headings)
  for note in important-dates {
    if note.date > prev-session-date {
      let note-days = (note.date - start).days()
      week = int((note-days + start.weekday() - 1) / 7) + 1
      render-date-note(note.date, note, week)
    }
  }
}