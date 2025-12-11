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
  - TJ Clark, "Introduction," in _Farwell to an Idea: Episodes from a History of Modernism_
]

#let post_war_new_york = session("When New York Stole the Idea of Modern Art")[
  
  _Read_:
  - David Joselit, from _American Art Since 1945_
]

#let post_war_art_developing = session("Post-War Art in Developing Nations")[
  Examination of post-war art movements in developing nations and their contributions to global art narratives.

  _Read_:

]

#let performance_art = session("From Happenings to Performance Art")[
  Exploration of the emergence and significance of performance art in the post-war period.

  _Read_:
  - Amelia Jones from *Body Art* in #text(style: "italic")[@ATC]
]

#let new_media_art = session("New Media Art and Technology")[
  Exploration of the impact of new media and technology on contemporary art practices.

  _Read_:

]

#let installation_art = session("Earth Art and Installation")[
  Examination of installation art as a medium for creating immersive and interactive experiences.

  _Read_:
  - Claire Bishop, "Installation Art: A Critical History,"
]

#let curation = session("When Curators Took Over the Art World")[
  Analysis of the increasing influence of curators in shaping art exhibitions and trends.

  _Read_:
  // - Hans Ulrich Obrist, "The Curator's Role in Contemporary Art," in #text(style: "italic")[@ATC]
]

#let community_art = session("Art and Community Engagement")[
  Discussion on the role of art in community development and social change.

  _Read_:
  - Grant Kester, "Conversation Pieces: Community and Communication in Modern Art"
]

#let european_post_war = session("European Post-War Art")[
  Examination of key European art movements and figures in the post-war period.

  _Read_:
  - "The European Scene" in #text(style: "italic")[@MAS]
]

#let minimalism = session("Art and Objecthood")[]

#let site-specific-art = session("Site-Specific Art and Public Art")[
  Exploration of art created for specific locations and its interaction with the environment.

  _Read_:
  - Miwon Kwon, "One Place After Another: Notes on Site Specificity," in #text(style: "italic")[@ATC]
]

#let post-painterly = session("Post-Painterly Abstraction")[]

#let what_is_contemporary_art = session("What is Contemporary Art?")[
  _Read_:
  - #link("https://images-eflux.b-cdn.net/assets/8ce5ab1b-d510-46c0-b219-57334f24c014")[Andrea Fraser, "The Field of Contemporary Art," in e-flux journal, Oct 2024.]
]

#let pop_art = session("Pop Art and Consumer Culture")[]

#let calligraphic_abstraction = session("Calligraphic Abstraction")[
  Study of the influence of calligraphy on abstract art movements in the post-war era.

  _Read_:
  - Iftikhar Dadi, "Rethinking Calligraphic Abstraction," in _Discrepant Abstraction_
]

#let biennials = session("Biennials as New Spectacles")[
  Analysis of the role of cities and biennials in shaping contemporary art practices and discourses.
]

#let culture_wars = session("Culture Wars and Art in the Late 20th Century")[
  Discussion on the intersection of art, politics, and society during the culture wars of the late 20th century. Act up and the AIDS crisis.

  _Read_:
]

#let conceptual_art = session("Conceptual Art and Institutional Critique")[]

#let latin_american_art = session("From Neo-concretism to Tropicalia")[
  Exploration of Latin American contributions to modern and contemporary art movements.

  _Read_:

]

#let ai = session("From digital to AI")[
  Examination of the evolution of digital art practices leading to the emergence of AI in art creation.

  _Read_:

]

#let feminist_art = session("Feminist Art Movements")[
  Exploration of feminist perspectives in contemporary art and their impact on the art world.
]

#let presentations = session("Student Presentations")[
  Student presentations on selected contemporary artists or art movements. See #underline[myClass] for schedule.
]

