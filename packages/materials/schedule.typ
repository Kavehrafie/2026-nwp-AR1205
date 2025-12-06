// Schedule output for markdown sync (typlite)
// This file outputs just the schedule for syncing to Astro docs

#import "lib/timetable.typ": *
#import "params.typ": *

#schedule(
  start: start-date,
  days: class-days,
  holidays: holidays,
  events: (
    session-intro,
    session-review-14th-15th,
    session-northern-renaissance,
    session-high-renaissance,
    session-mannerism,
    session-new-world,
    session-baroque-in-southern-europe,
    session-baroque-in-southern-europe,
    session-baroque-in-northern-europe,
    session-rococo,
    session-enlightenment-french-revolution,
    session-neoclassicism-romanticism,
    session-neoclassicism-romanticism,
    session-realism,
    session-impressionism,
    session-impressionism,
    session-post-impressionism,
    session-post-impressionism,
    session-south-asian-art,
    session-mongol,
    session-aztec-inca,
    session-north-american-indigenous,
    session("Contemporary Perspectives", [
      Contemporary global dialogues on art; modern resonances with historical movements.
    ]),
    session("Student Presentations", [
      Student-led analyses connecting course themes to selected case studies.
    ]),
    session("Final Review & Course Wrap-Up", [
      Review of key concepts and preparation for final assessments.
    ]),
  ),
)
