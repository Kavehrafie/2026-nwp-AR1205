// Schedule output for markdown sync (typlite)
// This file outputs just the schedule for syncing to Astro docs

#import "../spring-calendar.typ": start-date, class-days, holidays
#import "../lib/timetable.typ": *
#import "params.typ": *
#import "@preview/abbr:0.3.0"
#import "../spring-calendar.typ": start-date, class-days, holidays


#show: abbr.show-rule

#abbr.make(..abbreviations)

#let schedule-list = (
  session-intro,
  session-southern-northern-renaissance,
  session-high-renaissance,
  session-mannerism,
  session-new-world,
  session-south-asian-art,
  session-chinese-art,
  session-japanese-art,
  session-african-art,
  session-pacific-art,
  session-aztec-inca,
  session-north-american-indigenous,
  session-baroque-i,
  session-baroque-ii,
  session-baroque-iii,
  session-neoclassicism-romanticism,
  session-realism,
  session-impressionism,
  session-post-impressionism,
  session-pre-war,
  session-interwar,
  session-post-war,
  session-neo-avant-garde,
  session-contemporary-art,
  session-final
)

#let important-dates = (
  date-note("Artifact I", datetime(year: 2026, month: 2, day: 15), kind: "assignment", body: [HereHEREEEEE]),
)

#let schedule-table = schedule(
  start: start-date,
  days: (3, 5),
  holidays: holidays,
  events: schedule-list,
  important-dates: important-dates,
)

#schedule-table