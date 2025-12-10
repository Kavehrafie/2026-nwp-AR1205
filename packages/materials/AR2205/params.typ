#import "../lib/timetable.typ": holiday, holiday-range, session

#let start-date = datetime(year: 2026, month: 1, day: 6)
#let class-days = (1, 5)

#let holidays = (
  holiday("Family Day", datetime(year: 2026, month: 2, day: 16)),
  holiday-range("Winter Break", datetime(year: 2026, month: 2, day: 17), datetime(year: 2026, month: 2, day: 20)),
  holiday("Good Friday", datetime(year: 2026, month: 4, day: 3)),
)


/* 
 Define sessions individually so they can be rearranged in the syllabus
*/

#let session-intro = session("Course Introduction and Overview")[
  Introduction to the course and expectations. A walkthrough of the syllabus and assessment methods.
]

#let first_half_twenty_art = session("The First Half of 20th Century Art")[
  A short survey of modernist movements of the early 20th century until the end of World War II.
  _Read_:
  - #link("https://www.tate.org.uk/art/art-terms/c/cubism")[Tate, "Cubism"]
  - #link("https://www.moma.org/collection/terms/70")[MoMA, "Surrealism"]
  - #link("https://www.metmuseum.org/toah/hd/dada/hd_dada.htm")[The Met, "Dada"]
]

#let post_war_abstraction = session("Post-War Abstraction")[]

#let what_is_contemporary_art = session("What is Contemporary Art?")[
  _Read_:
  - #link("https://images-eflux.b-cdn.net/assets/8ce5ab1b-d510-46c0-b219-57334f24c014")[Andrea Fraser, "The Field of Contemporary Art," in e-flux journal, Oct 2024.]
]

#let presentations = session("Student Presentations")[
  Student presentations on selected contemporary artists or art movements. See #underline[myClass] for schedule.
]