// Session: a class meeting with title and content
#let session(title, body) = (type: "session", title: title, body: body)

// Holiday: a single day off
#let holiday(title, date) = (type: "holiday", title: title, date: date)

// Holiday range: multiple consecutive days off
#let holiday-range(title, start, end) = (type: "holiday-range", title: title, start: start, end: end)

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
  render-week: week => [== Week #week],
  render-session: (date, session, week) => [
    === #date.display("[weekday repr:short], [month repr:short] [day]"): *#session.title* \
    #session.body
  ],
  render-holiday: (date, name) => [
    === #date.display("[weekday], [month repr:short] [day]") -- *NO CLASS: #name*
  ],
) = {
  let holiday-map = build-holiday-map(holidays)
  
  // Find first class day
  let current = start
  while not (current.weekday() in days) {
    current = current + duration(days: 1)
  }

  let week = 0
  let last-week = 0

  for event in events {
    // Calculate week number
    let days-since-start = (current - start).days()
    week = int((days-since-start + start.weekday() - 1) / 7) + 1

    // Render week header if new week
    if render-week != none and week != last-week {
      render-week(week)
      last-week = week
    }

    // Check if current date is a holiday
    let date-str = current.display("[year]-[month]-[day]")
    while date-str in holiday-map {
      render-holiday(current, holiday-map.at(date-str))
      current = next-class-day(current, days)
      date-str = current.display("[year]-[month]-[day]")
    }

    // Render the session
    render-session(current, event, week)
    current = next-class-day(current, days)
  }
}