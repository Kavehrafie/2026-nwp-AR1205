#import "../lib/timetable.typ": session

#let abbreviations = (
  ("CCMEA", "Cultural Contact and the Making of European Art since the Age of Exploration"),
  ("MAS", "Movements in Art since 1945"),
  ("ATC", "Art of the Twentieth Century"),
  ("ASGWA", "A Short Guide to Writing about Art"),
  ("ART1900", "Art since 1900: Modernism, Antimodernism, Postmodernism")
)

/* 
 Define sessions individually so they can be rearranged in the syllabus
*/

#let session-intro = session("Course Introduction and Overview")[
  Introduction to the course and expectations. A walkthrough of the syllabus and assessment methods. A short introduction to writing about art.

  _Read_:
  - Sylvan Barnet, #text(style: "italic")[@ASGWA], 1--36
]

#let first_half_twenty_art = session("The First Half of 20th Century Art")[
  A short survey of modernist movements of the early 20th century until the end of World War II.
  
  _Read_:
  - TJ Clark, "Introduction," in _Farewell to an Idea: Episodes from a History of Modernism_
]

#let post_war_new_york = session("High Modernism in New York")[
  A short survey of Abstract Expressionism and its key figures in post-war New York during the Cold War.

  _Read_:
  - David Joselit, from _American Art Since 1945_
]

#let post_war_art_africa = session("Postwar Art in Africa")[
  Examination of post-war art movements in Africa and their contributions to global art narratives.

  _Read_:
  - #link("https://www.oxfordartonline.com/groveart/display/10.1093/gao/9781884446054.001.0001/oao-9781884446054-e-60000100082")[Chika Okeke, "Africa: Modern African Art"]
  - Sylvan Barnet, #text(style: "italic")[@ASGWA], 69--74
]

#let performance_art = session("Bodies in Action")[
  A focused exploration of the emergence and significance of performance art in the post-war period.

  _Read_:
  - Michael Archer, _Art Since 1960_, pp. 96--108
  // mostly the 1980s
]

#let new_media_art = session("New Media Art and Technology")[
  Exploration of the impact of new media and technology on contemporary art practices.

  _Read_:
  - TBD
]

#let installation_art = session("Earthwork")[
  Examination of land art as a medium from minimalism.

  _Read_:
  - Suzanne Boettger, "Earthworks" (excerpt)
]

#let curation = session("Artist-Curator")[
  Analysis of the increasing influence of curators in shaping art exhibitions and trends.

  _Read_:
  // - Hans Ulrich Obrist, "The Curator's Role in Contemporary Art," in #text(style: "italic")[@ATC]
  // - #link("https://www.e-flux.com/journal/2/68504/politics-of-installation")[Boris Groys, "Politics of Installation," e-flux journal, Issue \#2, 2009.]
  // - David Blazer, from _Curationism: How Curating Took Over the Art World and Everything Else_
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
  - Sylvan Barnet, #text(style: "italic")[@ASGWA], 48--67\* 
]

#let minimalism = session("Thing instead of Art Object")[
  Exploration of Minimalism as a reaction against Abstract Expressionism and its emphasis on simplicity and objecthood.

  _Read_:
  - David Joselit, "Mimalism" in _American Art Since 1945_
  // - James Meyer, from _Minimalism: Art and Polemics in the Sixties_ 
  // the intro and 1966 look to get more specific
]

#let site_specific_art = session("Site-Specific Art and Public Art")[
  Exploration of art created for specific locations and its interaction with the environment.

  _Read_:
  - Miwon Kwon, "One Place After Another: Notes on Site Specificity," in #text(style: "italic")[@ATC]
]

#let after_abstract_exp = session("What Comes After Abstract Expressionism?")[
  A review of the characteristics and significance of Post-Painterly Abstraction in the evolution of abstract art.

  _Read_:
  - "Post-Painterly Abstraction" in @MAS // remove this and replace with Joselit's cahpter on Painting of 1950s
  - Sylvan Barnet, #text(style: "italic")[@ASGWA], 42--48
]

#let what_is_contemporary_art = session("What is Contemporary Art?")[
  _Read_:
  - #link("https://images-eflux.b-cdn.net/assets/8ce5ab1b-d510-46c0-b219-57334f24c014")[Andrea Fraser, "The Field of Contemporary Art," in e-flux journal, Oct 2024.]
]

#let pop_art = session("Pop Art and Consumer Culture")[
  Exploring art of consumer culture on steroids in the second half of the 20th century.

  _Read_:
  - Blake Stimson, from _Citizen Warhol_
  // - "1960" and "1964" in @ART1900
  - Lucie-Smith, from #text(style: "italic")[@MAS], pp. 107--130 (optional)
]

#let happenings_neo-data = session("Happenings and the Neo-Dada")[
  Examination of Happenings as a precursor to performance art and their role in the development of Pop Art.

  _Read_:
  - "Pop, Environments and Happenings" in #text(style: "italic")[@MAS], pp. 97--106
  - "1955a" and "1961" in @ART1900
]

#let biennials = session("Biennials as New Spectacles")[
  Analysis of the role of cities and biennials in shaping contemporary art practices and discourses.

  _Read_:
  - Charles Green and Anthony Gardner, "Introduction" in _Biennials, Triennials, and Documenta_
]

#let culture_wars = session("Culture Wars and Art in the Late 20th Century")[
  Discussion on the intersection of art, politics, and society during the culture wars of the late 20th century. Act up and the AIDS crisis.

  _Read_:
  - Jonathan D. Katz, "'The Senators Were  Revolted': Homophobia  and the Culture Wars" in _A Companion to Contemporary Art Since 1945_
]

#let conceptual_art = session("Conceptual Art and Institutional Critique")[
  Examination of the emergence of Conceptual Art and its critique of traditional art institutions and practices.

  _Read_:   
  - Lucy Lippard, "Escape Attempts: Conceptual Art 1967-1972," in _Reconstructing the Object of Art: 1965-1972_
]

#let beyond_abstraction = session("Counter-Narratives of Abstraction")[
  A critical examination of two parallel movements that emerged in the 1950s-60s to challenge dominant Euro-American modernist abstraction.

  _Read_:
  - "1959e" in #text(style: "italic")[@ART1900], pp. 494--501
  - Iftikhar Dadi, "Rethinking Calligraphic Abstraction," in _Discrepant Abstraction_
]

#let ai = session("From digital to AI")[
  Examination of the evolution of digital art practices leading to the emergence of AI in art creation.

  _Read_:
  - Annie Armstrong, "Forget Blue-Chip Art. It's a 'Red-Chip' Art World Now" also listen to her interviwew on Art Edge
  - Michael Wagner, "AI Slop Is the New Kitsch"

  _Listen_:
  - #link("https://podcasts.apple.com/au/podcast/the-rise-of-the-red-chip-art-world/id1484445852?i=1000703077994")["The Rise of the Red-Chip Art World." _The Art Angle_]

]

#let feminist_art = session("Feminist Art Movements")[
  Exploration of the history of feminist art movements in the second half of the 20th century.

  *Class Evaluation*

  _Read_:
  - #link("https://www.theartstory.org/movement/feminist-art/")["Feminist art movement". The Art Story Foundation.]
  - Amelia Jones from _Body Art_ in #text(style: "italic")[@ATC] 
]

#let presentations = session("Student Presentations")[
  Student presentations on selected contemporary artists or art movements. See #underline[myClass] for schedule.
]

#let guest = session("Guest Lecture")[
]

#let fluxus = session("Art as Experience")[
  Examination of the Fluxus movement and its impact on avant-garde art practices.

  _Read_:
  - Hannah Higgins, "Fluxus Experience"
]

#let video_photography = session("Video Art and Photography")[
  Exploration of the use of video and photography as mediums.

  _Read_:
  - Jeff Wall, "Marks of Indifference": Aspects of Photography in, or as, Conceptual Art (1995)
]