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
  session-baroque-in-southern-europe,
  session-baroque-in-northern-europe,
  session-rococo,
  session-neoclassicism-romanticism,
  session-realism,
  session-impressionism,
  session-post-impressionism,
  session-pre-war,
  session-interwar,
  session-post-war,
  session-neo-avant-garde,
  session-towards-contemporary-art,
  session-final
)

#let schedule-table = schedule(
  start: start-date,
  days: (3, 5),
  holidays: holidays,
  events: schedule-list,
)

#schedule-table