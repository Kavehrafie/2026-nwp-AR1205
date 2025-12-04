
#let session(title, body: none, ..args) = {
  let content = body
  if content == none and args.pos().len() > 0 {
    content = args.pos().first()
  }
  (title: title, body: content, type: "session", ..args.named())
}

#let holiday(title, date) = (title: title, date: date, type: "holiday")

#let holiday-range(title, start, end) = (title: title, start: start, end: end, type: "holiday-range")

#let schedule(
  start: datetime(year: 2026, month: 9, day: 2),
  days: (1, 3),
  holidays: (),
  events: (),
  render-week: (week) => [== Week #week],
  render: (date, event, week) => [
    === #date.display("[weekday repr:short], [month repr:short] [day]"):  *#event.title* \
    #event.body
  ]
) = {
  let current-date = start
  let i = 0
  let last-week = 0
  
  let holiday-map = (:)
  if type(holidays) == "dictionary" {
    for (k, v) in holidays { holiday-map.insert(k.display("[year]-[month]-[day]"), v) }
  } else if type(holidays) == "array" {
    for h in holidays {
      if h.type == "holiday" {
        holiday-map.insert(h.date.display("[year]-[month]-[day]"), h.title)
      } else if h.type == "holiday-range" {
        let d = h.start
        while d <= h.end {
          holiday-map.insert(d.display("[year]-[month]-[day]"), h.title)
          d = d + duration(days: 1)
        }
      }
    }
  }

  while not (current-date.weekday() in days) {
    current-date = current-date + duration(days: 1)
  }

  let event-list = if type(events) == "array" { events } else { (events,) }

  while i < event-list.len() {
    let days-since-start = (current-date - start).days()
    let week = int((days-since-start + start.weekday() - 1) / 7) + 1

    if render-week != none and week != last-week {
      render-week(week)
      last-week = week
    }

    let date-str = current-date.display("[year]-[month]-[day]")
    if date-str in holiday-map {
      let name = holiday-map.at(date-str)
      [=== #current-date.display("[weekday], [month repr:short] [day]") -- *NO CLASS: #name*]
    } else {
      render(current-date, event-list.at(i), week)
      i += 1
    }

    let found-next = false
    let days-to-add = 0
    while not found-next {
      days-to-add += 1
      let next-date = current-date + duration(days: days-to-add)
      if next-date.weekday() in days {
        current-date = next-date
        found-next = true
      }
    }
  }
}