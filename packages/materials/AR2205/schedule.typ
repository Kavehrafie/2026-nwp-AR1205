// Schedule output for markdown sync (typlite)
// This file outputs just the schedule for syncing to Astro docs

#import "../lib/timetable.typ": *
#import "params.typ": *

#schedule(
  start: start-date,
  days: class-days,
  holidays: holidays,
  events: (
    session-intro,
    first_half_twenty_art,
    post_war_new_york,
    european_post_war,
    after_abstract_exp,
    minimalism,
    performance_art,
    installation_art,
    site_specific_art,
    post_war_art_africa,
    community_art,
    curation,
    new_media_art,
    session("Student Presentations", [
      Student-led analyses connecting course themes to selected case studies.
    ]),
    session("Final Review & Course Wrap-Up", [
      Review of key concepts and preparation for final assessments.
    ]),
  ),
)
