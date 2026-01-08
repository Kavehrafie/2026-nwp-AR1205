// Schedule output for markdown sync (typlite)
// This file outputs just the schedule for syncing to Astro docs

#import "../spring-calendar.typ": start-date, class-days, holidays
#import "../lib/timetable.typ": *
#import "params.typ": *
#import "@preview/abbr:0.3.0"


#show: abbr.show-rule

#abbr.make(..abbreviations)

#let schedule-list = (
  session-intro,
  session-early-italian-renaissance,
  session-northern-renaissance,
  session-high-renaissance,
  session-mannerism,
  session-baroque-i,
  session-baroque-ii,
  session-baroque-iii,
  session-new-world,
  session-pre-colombian-art,
  session-south-asian-art,
  session-chinese-art,
  session-japanese-art,
  session-african-art,
  session-pacific-art,
  session-north-american-indigenous,
  session-neoclassicism-romanticism,
  session-realism,
  session-photography-impressionism,
  session-post-impressionism,
  session-pre-war,
  session-interwar,
  session-post-war,
  session-neo-avant-garde,
  session-contemporary-moment,
  // session-final
)


#let schedule-table = schedule(
  start: start-date,
  days: (3, 5),
  holidays: holidays,
  events: schedule-list,
  important-dates: important-dates,
)

#let schedule-without-important-dates = schedule(
  start: start-date,
  days: (3, 5),
  holidays: holidays,
  events: schedule-list,
)

#let only-important-dates = schedule(
  start: start-date,
  days: (3, 5),
  holidays: holidays,
  events: (),
  important-dates: important-dates,
)