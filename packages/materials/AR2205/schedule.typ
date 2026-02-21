// Schedule output for markdown sync (typlite)
// This file outputs just the schedule for syncing to Astro docs

#import "../lib/timetable.typ": *
#import "params.typ": *
#import "../spring-calendar.typ": start-date, holidays
#import "@preview/abbr:0.3.0"

#show: abbr.show-rule

#abbr.make(..abbreviations)

#let schedule-list = (
    session-intro,
    first_half_twenty_art,
    // post_war_abstraction,
    post_war_new_york,
    after_abstract_exp,
    european_post_war,
    post_war_art_africa,
    happenings_neo-data,
    pop_art,
    minimalism,
    fluxus,
    installation_art,
    latin_american_art,
    // calligraphic_abstraction,
    conceptual_art,
    video_photography,
    performance_art,
    feminist_art,
    culture_wars,
    what_is_contemporary_art,
    curation,
    site_specific_art,
    community_art,
    // guest, // She is not confirmed 
    biennials,
    // new_media_art,
    ai,
    presentations,
    presentations,
)

#let schedule-table = schedule(
  start: start-date,
  days: (1,5), // Mondays and Fridays
  holidays: holidays,
  events: schedule-list,
)

#schedule-table