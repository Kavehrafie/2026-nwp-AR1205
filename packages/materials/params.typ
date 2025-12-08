#import "lib/timetable.typ": holiday, holiday-range, session

#let start-date = datetime(year: 2026, month: 1, day: 6)
#let class-days = (3, 5)

#let holidays = (
  holiday("Family Day", datetime(year: 2026, month: 2, day: 16)),
  holiday-range("Winter Break", datetime(year: 2026, month: 2, day: 17), datetime(year: 2026, month: 2, day: 20)),
  holiday("Good Friday", datetime(year: 2026, month: 4, day: 3)),
)


/* 
 Define sessions individually so they can be rearranged in the syllabus
*/

// intro session
#let session-intro = session(
  "Introduction & Course Overview",
  [
    Overview of the course structure, objectives, and assessment methods. The 15th-century context of the Age of Exploration will be introduced.

    _Read_:
    - #link("https://smarthistory.org/introduction-to-art-historical-analysis/?sidebar=the-basics-of-art-history")["Introduction to understanding art" by Robert Glass] 
    - #link("https://smarthistory.org/introduction-iconographic-analysis/?sidebar=the-basics-of-art-history")["Iconography and iconographic analysis, an introduction" by Lauren Kilroy-Ewbank]
  ],
  // Sources:
  // Introduction in Stokstad
)


#let session-southern-northern-renaissance = session(
  "Art of the New Era",
  [
    From Arab mathematics to the invention of linear perspective. Renaissance art in Italy and Northern Europe.
  
    _Key artists_: Masaccio, Donatello, Sandra Botticelli, Jan van Eyck, Hieronymus Bosch and others.

    _Read_:
    - Hans Belting, _Florence and Baghdad: Renaissance Art and Arab Science_, pp. 173--185
    - #link("https://smarthistory.org/renaissance-in-15th-century-europe/")["Donatello, David" by Heather Graham]
    - #link("https://smarthistory.org/the-study-of-anatomy/?sidebar=europe-1500-1600")["The study of anatomy" by Steven Zucker and Beth Harris]
    - #link("https://smarthistory.org/botticelli-portrait-man-with-medal/?sidebar=europe-1400-1500")["Botticelli, Portrait of a Man with a Medal of Cosimo il Vecchio de' Medici" by Rebecca Howard]
    - #link("https://smarthistory.org/bosch-the-garden-of-earthly-delights/?sidebar=europe-1400-1500")["Hieronymus Bosch, The Garden of Earthly Delights" by Sally Hickson]
    
    _Watch_:
    - #link("https://youtu.be/bkNMM8uiMww
    ")[Linear Perspective: Brunelleschi’s Experiment]
    // - #link("https://youtu.be/ggpKKlsaeac")[Filippo Brunelleschi, Santo Spirito, Florence] 
    // - #link("https://youtu.be/6dWHPHELCKU")[Donatello, Equestrian Monument of Gattamelata]
    - #link("https://youtu.be/q1X0Lj7YEMs")[Workshop of Robert Campin, Annunciation Triptych (Merode Altarpiece)]
    - #link("https://youtu.be/wAg7NQ0akkQ")[Jan van Eyck, The Arnolfini Portrait]
  ]
)

#let session-northern-renaissance = session(
  "Northern Renaissance",
  [Exploration of the Northern Renaissance and its distinct characteristics.
  \
    - Key artists: Jan van Eyck, Albrecht Dürer, Hieronymus Bosch.
  ]
)

#let session-high-renaissance = session(
  "The Lives of Artists during the High Renaissance",
  [
    Study of the High Renaissance period in Italy. 
  
    Key artists: Leonardo da Vinci, Michelangelo, Raphael.

    _Read_:
      - Evelyn Welch, "Markets and Metaphors " in _Shopping in the Renaissance: Consumer Cultures in Italy 1400-1600_
      - #link("https://smarthistory.org/humanism-italian-renaissance-art/?sidebar=europe-1400-1500")["Humanism in Italian renaissance art" by Heather Graham]
    _Watch_:
    // - #link("https://youtu.be/8e20mMzj5Ug")[Andrea Mantegna, Dead Christ]
    - #link("https://youtu.be/zfv-dGvFxIE")[Michelangelo, Pietà]
    - #link("https://youtu.be/R5UK0dEFSoM")[Saint Peter’s Basilica]
  ]
)

#let session-new-world = session(
  "Art of the New World",
  [
    A beginning Cultural contact and exchange during the Age of Exploration.

    _Read_:
    - Claire Farago, "On the Peripatetic Life of Objects in Era of Globalization" in #text(style: "italic")[@CCMEA]
    - #link("https://smarthistory.org/featherworks/")["Featherworks: The Mass of St. Gregory" by Lauren Kilroy-Ewbank]
    - #link("https://smarthistory.org/medici-americas/?sidebar=europe-1500-1600")["The Medici collect the Americas" by  Lauren Kilroy-Ewbank]
  ]
)

#let session-mannerism = session(
  "Mannerism",
  [Analysis of the Mannerist style and its departure from Renaissance ideals.
  \
    - Key artists: Pontormo, Parmigianino, El Greco.
  ]
)

#let session-baroque-in-southern-europe = session(
  "Baroque in Southern Europe",
  [Investigation of Baroque art in Italy and Spain.
  \
    - Key artists: Caravaggio, Bernini, Velázquez.
  ]
)

#let session-baroque-in-northern-europe = session(
  "Baroque in Northern Europe",
  [Study of Baroque art in the Netherlands and Flanders.
  \
    - Key artists: Rembrandt, Rubens, Vermeer.
  ]
)

#let session-rococo = session(
  "Rococo",
  [From Louis XV to Louis XVI: Exploration of the Rococo style and its characteristics.
  \
    - Key artists: Watteau, Fragonard, Boucher.
  ]
)

#let session-enlightenment-french-revolution = session(
  "Art and the French Revolution",
  [Examination of art during the French Revolution and its aftermath.
  \
    - Key artists: David, Gros.
  ]
)

#let session-neoclassicism-romanticism = session(
  "Neoclassicism and Romanticism",
  [Study of Neoclassical and Romantic art movements.
  \
    - Key artists: Ingres, Delacroix, Goya.
  ]
)

#let session-realism = session(
  "Realism",
  [Analysis of the Realist movement and its focus on everyday life.
  \
    - Key artists: Courbet, Millet.
  ]
)

#let session-photography = session(
  "Photography and Modernity",
  [The invention of photography and its impact on visual culture and painting.
  \
    - Key figures: Daguerre, Talbot, Nadar.
  ]
)

#let session-impressionism = session(
  "Impressionism",
  [Investigation of the Impressionist movement and its techniques.
  \
    - Key artists: Monet, Renoir, Degas.
  ]
)

#let session-post-impressionism = session(
  "Post-Impressionism",
  [Exploration of Post-Impressionist artists and their diverse styles.
  \
    - Key artists: Van Gogh, Gauguin, Cézanne.
  ]
)


#let session-south-asian-art = session(
  "Art of South Asia and Southeast Asia",
  [Study of South Asian art from ancient to medieval periods.
  \
    - Key examples: Maurya, Gupta, Mughal art.
  ]
)

#let session-mongol = session(
  "Art under the Mongol Empire",
  [Examination of art during the Mongol Empire and its cultural exchanges.]
)

#let session-chinese-art = session(
  "Chinese Art from 1279",
  [Art of the Yuan, Ming, and Qing Dynasties.
  \
    - Key topics: Literati painting, porcelain, the Forbidden City.
  ]
)

#let session-japanese-art = session(
  "Art in Japan since the 14th Century",
  [From the Muromachi to the Edo period.
  \
    - Key topics: Zen gardens, tea ceremony, Ukiyo-e prints.
  ]
)

#let session-african-art = session(
  "African Art since the 16th Century",
  [Art, power, and the impact of colonization.
  \
    - Key topics: Benin bronzes, nkisi nkondi, masquerades, colonial encounters.
  ]
)

#let session-pacific-art = session(
  "Art of Pacific Cultures",
  [Arts of Oceania: Polynesia, Micronesia, and Melanesia.
  \
    - Key topics: Navigation charts, tattooing, ritual figures.
  ]
)

#let session-aztec-inca = session(
  "Aztec Art and Architecture and Inca Art and Architecture",
  [Exploration of Aztec and Inca art forms and architectural achievements.]
)

#let session-north-american-indigenous = session(
  "North American Indigenous Art",
  [Study of indigenous art forms from various North American cultures.]
)

#let session-pre-war = session("Pre-War Modernism", [
      Overview of early 20th-century modernist movements such as Fauvism, Cubism, and Expressionism.
    ])  

#let session-student-presentations = session("Student Presentations", [
      Student-led analyses connecting course themes to selected case studies.
    ])

#let session-interwar = session("Interwar Backlash", [
      Examination of modernist movements between the World Wars.
    ])

#let session-post-war = session("Post-War Art Movements", [
      Overview of Abstract Expressionism, and other post-war art movements. 
    ])

#let session-neo-avant-garde = session("Neo-Avant-Garde Movements", [
      Study of Pop Art, Minimalism, and Conceptual Art.
    ])

#let session-contemporary-social-activism = session("From feminist art to social activism", [
      Exploration of contemporary art practices addressing social and political issues.
    ])

#let session-biennials-globalization = session("Biennials and Globalization", [
      Study of the role of biennials in the global art scene and cultural exchange.
    ])

#let session-baroque-rococo-part1 = session("Baroque and Rococo Part 1", [
      Examination of Baroque and Rococo art in Europe.
    ])

#let session-baroque-rococo-part2 = session("Baroque and Rococo Part 2", [
      Continuation of the study of Baroque and Rococo art in Europe.
    ])
    
#let session-final =    session("Final Review & Course Wrap-Up", [
      Review of key concepts and preparation for final assessments.
    ])

// Noable links and artists
// - https://smarthistory.org/lawrence-paul-yuxweluptun-leaving-reservation-ottawa/
// 