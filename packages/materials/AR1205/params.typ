#import "../lib/timetable.typ": session

/* 
 Define sessions individually so they can be rearranged in the syllabus
*/

// intro session
#let session-intro = session(
  "Introduction & Course Overview",
  [
    Overview of the course structure, objectives, and assessment methods. The 15th-century context of the Age of Exploration will be introduced.

    _Read_:
    // - #link("https://smarthistory.org/introduction-to-art-historical-analysis/?sidebar=the-basics-of-art-history")["Introduction to understanding art" by Robert Glass] 
    // - #link("https://smarthistory.org/introduction-iconographic-analysis/?sidebar=the-basics-of-art-history")["Iconography and iconographic analysis, an introduction" by Lauren Kilroy-Ewbank]
    Sylvia Barnet, "Formal Analysis and Style" in _A Short Guide to Writing about Art_
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
  "The Spirit of the High Renaissance",
  [
    Study of the High Renaissance period in Italy. 
  
    Key artists: Leonardo da Vinci, Michelangelo, Raphael.

    _Read_:
      - Evelyn Welch, "Markets and Metaphors " in _Shopping in the Renaissance: Consumer Cultures in Italy 1400-1600_
      // - #link("https://smarthistory.org/humanism-italian-renaissance-art/?sidebar=europe-1400-1500")["Humanism in Italian renaissance art" by Heather Graham]
      - #link("https://smarthistory.org/leonardo-da-vinci-vitruvian-man/?sidebar=europe-1500-1600")["Leonardo da Vinci, 'Vitruvian Man'" by Letha Ch'ien]
      // - #link("https://smarthistory.org/michelangelo-ceiling-of-the-sistine-chapel/?sidebar=europe-1500-1600")["Michelangelo, Ceiling of the Sistine Chapel" by Christine Zappella]
      - #link("https://smarthistory.org/raphael-introduction/?sidebar=europe-1500-1600")["Raphael, an introduction" by Heather Graham]
    _Watch_:
    // - #link("https://youtu.be/8e20mMzj5Ug")[Andrea Mantegna, Dead Christ]
    - #link("https://youtu.be/94xKRkCHlv0")[Leonardo, The Virgin of the Rocks]
    - #link("https://youtu.be/R5UK0dEFSoM")[Saint Peter’s Basilica]
    - #link("https://youtu.be/zfv-dGvFxIE")[Michelangelo, Pietà]
    - #link("https://youtu.be/PEE3B8Fsuc0")[Michelangelo, Ceiling of the Sistine Chapel]
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
  "Late Renaissance and Mannerism",
  [Analysis of the Mannerist style and its departure from Renaissance ideals.

    - Key artists: From Titian to Pontormo, Parmigianino, El Greco.

    _Read_:
    - Arnold Hauser, "The Concept of Mannerism" in _The Social History of Art, Vol. II: Mannerism and Art in the Baroque Era_
    _Watch_:
    - #link("https://youtu.be/qD6ct0VS15c")[Titian, Venus of Urbino]
    - #link("https://youtu.be/9g-r2007Y8c")[Paolo Veronese, Feast in the House of Levi]
    - #link("https://youtu.be/suIUUGdNyWk")[Parmigianino, Madonna with the Long Neck]
    - #link("https://youtu.be/YhsjS5CtCTE")[Jacopo Tintoretto, Last Supper]
    - #link("https://youtu.be/N09QNm3XKW4")[El Greco, The Burial of the Count of Orgaz]
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

    - Key artists: Rembrandt, Rubens, Vermeer.

    _Read_:
    - Svetlana Alpers, "The Mapping Impulse in Dutch Art" in _The Arts of Describing: Dutch Art in the Seventeenth Century_
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
  "From the 14th Century to the Mogul Empire in the Indian Subcontinent and Beyond",
  [Study of South Asian from the 14th century.

    _Read_:
    - #link("https://smarthistory.org/the-qutb-complex-and-early-sultanate-architecture/?sidebar=asia-1000-1500")["The Qutb complex and early Sultanate architecture" by Arathi Menon]
    - #link("https://smarthistory.org/art-and-architecture-of-vijayanagara-empire/?sidebar=asia-1000-1500")["Art and architecture of the Vijayanagara empire" by Gita V. Pai]
    - #link("https://smarthistory.org/indo-portuguese-ivory-statuettes/?sidebar=asia-1500-1900")["Christian art in India: Indo-Portuguese ivory statuettes" by Marsha G. Olson ]
    - #link("https://smarthistory.org/meenakshi-madurai/?sidebar=asia-1500-1900")["Meenakshi Temple at Madurai" by Edward Fosmire]
    - #link("https://smarthistory.org/akbarnama/?sidebar=asia-1500-1900")["Illustration from the Akbarnama" by Katrina Klaasmeyer]
    - #link("https://smarthistory.org/the-taj-mahal/?sidebar=asia-1500-1900")["The Taj Mahal" by Roshna Kapadia]
    - #link("https://smarthistory.org/wat-phra-kaew-temple-of-the-emerald-buddha/")[
      "Wat Phra Kaew (Temple of the Emerald Buddha)" by Melody Rod-ari
    ]
  ]
)

#let session-mongol = session(
  "Art under the Mongol Empire",
  [Examination of art during the Mongol Empire and its cultural exchanges.]
)

#let session-chinese-art = session(
  "Chinese Art from 1279",
  [An overview of Chinese art of the Yuan, Ming, and Qing Dynasties.
  
  Key topics: Literati painting, porcelain, the Forbidden City.
  
  _Read_:
  - Julie Hochstrasser, "Remapping Dutch Art in Global Perspective  Other Points of View" in #text(style: "italic")[@CCMEA], pp.43--48 
  - #link("https://smarthistory.org/yuan-dynasty-intro/?sidebar=asia-1000-1500")["Yuan dynasty (1279–1368), an introduction"]
  - #link("https://smarthistory.org/ming-dynasty-intro/?sidebar=asia-1000-1500")["Ming dynasty (1368–1644), an introduction"]
  - #link("https://smarthistory.org/qing-dynasty-intro/?sidebar=asia-1500-1900")["Qing dynasty (1644–1912), an introduction"]
  - #link("https://smarthistory.org/the-forbidden-city/?sidebar=asia-1000-1500")[The Forbidden City]
  - #link("https://smarthistory.org/abduction-of-helen-tapestry/?sidebar=asia-1500-1900")["The Abduction of Helen Tapestry" by Lauren Kilroy-Ewbank]
  - #link("https://smarthistory.org/kim-hongdo-album-of-genre-paintings/")["Kim Hongdo, album of genre paintings"]

  _Watch_:
  - #link("https://smarthistory.org/wat-phra-kaew-temple-of-the-emerald-buddha/")[Buddha of Medicine Bhaishajyaguru (Yaoshi fo)]
  - #link("https://youtu.be/D6_0-arfDpQ")[The David Vases]
  - #link("https://youtu.be/9FAfK6MDA-Q")[Wang Lü, Landscapes of Mount Hua (Huashan)]
  - #link("https://youtu.be/8xdpvQ8BzPg")[Wang Shimin, Cloud Capped Mountains and Misty Riverside]
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

#let session-towards-contemporary-art = session("Towards Contemporary Art", [
      Exploration of movements leading to contemporary art practices.
    ])

// Noable links and artists
// - https://smarthistory.org/lawrence-paul-yuxweluptun-leaving-reservation-ottawa/
// 