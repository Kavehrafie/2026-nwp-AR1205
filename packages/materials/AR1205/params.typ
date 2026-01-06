#import "../lib/timetable.typ": session, date-note

#let abbreviations = (
  ("CCMEA", "Cultural Contact and the Making of European Art since the Age of Exploration"),
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
    // - #link("https://smarthistory.org/introduction-to-art-historical-analysis/?sidebar=the-basics-of-art-history")["Introduction to understanding art" by Robert Glass] 
    // - #link("https://smarthistory.org/introduction-iconographic-analysis/?sidebar=the-basics-of-art-history")["Iconography and iconographic analysis, an introduction" by Lauren Kilroy-Ewbank]
    - Sylvia Barnet, "Formal Analysis and Style" in _A Short Guide to Writing about Art_
  ],
  // Sources:
  // Introduction in Stokstad
)


#let session-southern-northern-renaissance = session(
  "Art of the New Era",
  [
    From Arab mathematics to the invention of linear perspective. Renaissance art in Italy and Northern Europe.
  
    _Key artists_: Masaccio, Donatello, Sandro Botticelli, Jan van Eyck, Hieronymus Bosch and others.

    _Read_:
    - Hans Belting, _Florence and Baghdad: Renaissance Art and Arab Science_, pp. 173--185
    - #link("https://smarthistory.org/renaissance-in-15th-century-europe/")["Donatello, David" by Heather Graham]
    - #link("https://smarthistory.org/the-study-of-anatomy/?sidebar=europe-1500-1600")["The study of anatomy" by Steven Zucker and Beth Harris]
    - #link("https://smarthistory.org/botticelli-portrait-man-with-medal/?sidebar=europe-1400-1500")["Botticelli, Portrait of a Man with a Medal of Cosimo il Vecchio de' Medici" by Rebecca Howard]
    - #link("https://smarthistory.org/bosch-the-garden-of-earthly-delights/?sidebar=europe-1400-1500")["Hieronymus Bosch, The Garden of Earthly Delights" by Sally Hickson]
    
    _Watch_:
    - #link("https://youtu.be/bkNMM8uiMww")[Linear Perspective: Brunelleschi’s Experiment]
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
      - Evelyn Welch, "Markets and Metaphors" in _Shopping in the Renaissance: Consumer Cultures in Italy 1400-1600_
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
    Cultural contact and exchange during the Age of Exploration.

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

#let session-baroque-i = session(
"Baroque from Southern Europe to the Global Stage",
  [Investigation of Baroque art in Italy and Spain.
  
    _Read_:
     - #link("https://smarthistory.org/global-baroque-introduction/?tl=global-baroque-introduction&sidebar=europe-1600-1700")["The global Baroque, an introduction" by Carmen Ripollés]
    - #link("https://smarthistory.org/artemisia-gentileschi-self-portrait-pittura/?tl=artemisia-gentileschi-self-portrait-pittura&sidebar=europe-1600-1700")["Artemisia Gentileschi, Self-Portrait as the Allegory of Painting or La Pittura" by Letha Ch'ien]
    - #link("https://smarthistory.org/juan-sanchez-de-cotan-quince-melon-and-cucumber/?tl=juan-sanchez-de-cotan-quince-melon-and-cucumber&sidebar=europe-1600-1700")["Juan Sanchez Cotán, Quince, Cabbage, Melon and Cucumber" by Sally Hickson]
    - Gauvin Alexander Bailey,  _Art of Colonial Latin America_

    _Video_:
    - #link("https://youtu.be/EFHPAbHaoqk")[How to recognize Baroque art?]
    - #link("https://youtu.be/asLQmxK7ExY")[Caravaggio, The Supper at Emmaus]
    - #link("https://youtu.be/JftEcBnopPI")[Caravaggio, The Conversion of St. Paul (or The Conversion of Saul)]
    - #link("https://youtu.be/EFsaaK1w2Ao")[Gian Lorenzo Bernini, Baldacchino, Saint Peter’s]
    - #link("https://youtu.be/_IBntk3Oj24")[Diego Velázquez, Las Meninas]
    // - Julie Hochstrasser, "Remapping Dutch Art in Global Perspective" in #text(style: "italic")[@CCMEA]
  ]
)

#let session-baroque-ii = session(
  "Baroque in Northern Europe",
  [Study of Baroque art in the Netherlands and Flanders.

    - Key artists: Rembrandt, Rubens, Vermeer.

    _Read_:
    - Svetlana Alpers, "The Mapping Impulse in Dutch Art" in _The Arts of Describing: Dutch Art in the Seventeenth Century_

    _Watch_:
    - #link("https://youtu.be/stMsneN1xw4")[What is genre painting?]
  ]
)

#let session-baroque-iii = session(
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
  
    - Linda Nochlin, _Realism_ (excerpt)
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

  _Read_: 
  - Carol Mavor, "Gauguin in Black and Blue" in #text(style: "italic")[@CCMEA]
  ]
)


#let session-south-asian-art = session(
  "From the 14th Century to the Mogul Empire in the Indian Subcontinent and Beyond",
  [Study of South Asian art from the 14th century.

    _Read_:
    - #link("https://smarthistory.org/the-qutb-complex-and-early-sultanate-architecture/?sidebar=asia-1000-1500")["The Qutb complex and early Sultanate architecture" by Arathi Menon]
    - #link("https://smarthistory.org/art-and-architecture-of-vijayanagara-empire/?sidebar=asia-1000-1500")["Art and architecture of the Vijayanagara empire" by Gita V. Pai]
    - #link("https://smarthistory.org/indo-portuguese-ivory-statuettes/?sidebar=asia-1500-1900")["Christian art in India: Indo-Portuguese ivory statuettes" by Marsha G. Olson]
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
  - Julie Hochstrasser, "Remapping Dutch Art in Global Perspective  Other Points of View" in #text(style: "italic")[@CCMEA], pp. 43--48 
  - #link("https://smarthistory.org/yuan-dynasty-intro/?sidebar=asia-1000-1500")["Yuan dynasty (1279–1368), an introduction"]
  - #link("https://smarthistory.org/ming-dynasty-intro/?sidebar=asia-1000-1500")["Ming dynasty (1368–1644), an introduction"]
  - #link("https://smarthistory.org/qing-dynasty-intro/?sidebar=asia-1500-1900")["Qing dynasty (1644–1912), an introduction"]
  - #link("https://smarthistory.org/the-forbidden-city/?sidebar=asia-1000-1500")[The Forbidden City]
  - #link("https://smarthistory.org/abduction-of-helen-tapestry/?sidebar=asia-1500-1900")["The Abduction of Helen Tapestry" by Lauren Kilroy-Ewbank]
  - #link("https://smarthistory.org/kim-hongdo-album-of-genre-paintings/")["Kim Hongdo, album of genre paintings"]

  _Watch_:
  - #link("https://smarthistory.org/buddha-of-medicine-bhaishajyaguru-yaoshi-fo/")[Buddha of Medicine Bhaishajyaguru (Yaoshi fo)]
  - #link("https://youtu.be/D6_0-arfDpQ")[The David Vases]
  - #link("https://youtu.be/9FAfK6MDA-Q")[Wang Lü, Landscapes of Mount Hua (Huashan)]
  - #link("https://youtu.be/8xdpvQ8BzPg")[Wang Shimin, Cloud Capped Mountains and Misty Riverside]
  ]
)

#let session-japanese-art = session(
  "Art in Japan since the 14th Century",
  [From the Muromachi to the Edo period.
  
  - Key topics: Zen gardens, tea ceremony, Ukiyo-e prints.

  _Read_:
  - From "Japonisme: Cultural Crossings between Japan and the West"
  - #link("https://smarthistory.org/ryoanji-peaceful-dragon-temple/?sidebar=asia-1000-1500")["Ryōanji (Peaceful Dragon Temple)" by Yoonjung Seo]
  - #link("https://smarthistory.org/edo-period/?sidebar=asia-1500-1900")["Edo period, an introduction" by Sonia Coman]
  - #link("https://smarthistory.org/francis-xavier-christianity-japan/?sidebar=asia-1500-1900")["A portrait of St. Francis Xavier and Christianity in Japan" by Rachel Miller]
  - #link("https://smarthistory.org/different-places-japanese-porcelain-english-gilt-bronze-mounts/?sidebar=asia-1500-1900")["Different places: Japanese porcelain with English gilt-bronze mounts" by Jeffrey Weaver]
  - #link("https://smarthistory.org/kabuki-actor-prints/?sidebar=asia-1500-1900")["Kabuki actor prints"]
  - #link("https://smarthistory.org/hokusai-under-the-wave-off-kanagawa-the-great-wave/?sidebar=asia-1500-1900")["Katsushika Hokusai, Under the Wave off Kanagawa (The Great Wave)" by Leila Anne Harris]

  _Watch_:
  - #link("https://youtu.be/vwoK8-y-5_U")[Bamboo in the Four Seasons: painting and poetry in Japan]
  - #link("https://youtu.be/2ft6OfcbIfk")["Different places: Japanese porcelain with English gilt-bronze mounts" by Jeffrey Weaver]
  ]
)

#let session-african-art = session(
"African Art since after the European Contact",
  [Art, power, and the impact of colonization.
  
  _Read_:
  // - #link()[] in _African Art at The Met_
  - Suzanne Preston Blier, "Imaging otherness in ivory: African portrayals of the Portuguese ca. 1492" in _Art Bulletin_

  - #link("https://smarthistory.org/rites-of-passage/")["Rites of passage in Africa" by Christa Clarke]
  - #link("https://smarthistory.org/masquerade-basics/?tl=masquerade-basics&sidebar=africa-1500-today")["Masquerade basics" by Kristen Laciste]
  - #link("https://smarthistory.org/african-art-and-the-effects-of-european-contact-and-colonization/")["African art and the effects of European contact and colonization" by Peri Klemm]

  _Watch_:
  - #link("https://www.youtube.com/watch?v=H9iy5TTALBQ")[Power Figure: Male (Nkisi)]
  ]

)

#let session-pacific-art = session(
  "Art of Pacific Cultures",
  [Arts of Oceania: Polynesia, Micronesia, and Melanesia.
  
  _Read_:
  - Adrienne L. Kaeppler, "The Pacific Arts of Polynesia and Micronesia" (an excerpt)

  _Video_:
  - #link("https://youtu.be/rrJkjEYJLWs")[Navigation Chart, Marshall Islands]
  - #link("https://youtu.be/EjtHXyRkt1A")[Rapa Nui (Easter Island) Moai]
  ]
)

#let session-aztec-inca = session(
  "Aztec Art and Architecture and Inca Art and Architecture",
  [Exploration of Aztec and Inca art forms and architectural achievements.
  
  _Read_:
  - Elizabeth Hill Boone, "Writing in Images," in _Stories in Red and Black: Pictorial Histories of the Aztecs and Mixtecs_
  - #link("https://smarthistory.org/introduction-mexica/")["Introduction to the Aztecs (Mexica)"]
  - #link("https://smarthistory.org/coatlicue/?sidebar=north-america-before-1500")[Coatlicue]
  - #link("https://smarthistory.org/codex-borgia/?sidebar=north-america-before-1500")[Codex Borgia]
  - #link("https://smarthistory.org/inka-intro2/?sidebar=south-america-before-1500")["The Inka, an introduction" by Sarahh Scher]

  _Watch_:
  - #link("https://youtu.be/86zSgZWVkVk")[The Templo Mayor and the Coyolxauhqui Stone]
  - #link("https://youtu.be/Z1rqLNz8Zo0")[Coyolxauhqui Monolith]
  - #link("https://youtu.be/JN-_3qUutIU")[Tlaloc Vessel]
  - #link("https://youtu.be/Q_Lp76ZkDE0")[Aztec feathered headdress]
  // https://smarthistory.org/pottery-model-temples/?sidebar=north-america-before-1500
  ]
)

#let session-north-american-indigenous = session(
  "North American Indigenous Art",
  [Study of indigenous art forms from various North American cultures.
  
  _Read_:
- Janet Catherine Berlo and Ruth B. Phillips,  "Native North American Art," in _Native North American Art_

  _Video_:
  - #link("https://youtu.be/ifY8gBIonAc")[Mesa Verde]
  ]

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

#let session-neo-avant-garde = session(
  "Neo-Avant-Garde Movements", [ 
    Study of Pop Art, Minimalism, and Conceptual Art.

    _Read_:
    - Lucy R. Lippard, "Introduction" in _Pop Art_
    
    _Video_:
    - #link("https://youtu.be/9bWJt2hjBH0")[Jasper Johns, Flag]
    - #link("https://youtu.be/tvpp2lAD9iY")[Robert Rauschenberg, Bed]
    - #link("https://youtu.be/lXfzq27fGvU")[Andy Warhol, Gold Marilyn Monroe]
    - #link("https://youtu.be/pgw0-nZdW94")[The case for Andy Warhol]
    - #link("https://youtu.be/N-mt2tiRJ7U")[Claes Oldenburg, Floor Cake]
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

#let session-contemporary-art = session("Towards Contemporary Art", [
      Exploration of movements leading to contemporary art practices.
    ])


#let important-dates = (
  date-note("Artifact I", datetime(year: 2026, month: 1, day: 19), kind: "assignment", body: [*Linear Perspective in Action* is due.]),
  date-note("Artifact II", datetime(year: 2026, month: 2, day: 16), kind: "assignment", body: [TBD]),
  date-note("Artifact III", datetime(year: 2026, month: 3, day: 16), kind: "assignment", body: [TBD]),
  date-note("Artifact IV", datetime(year: 2026, month: 4, day: 16), kind: "assignment", body: [TBD]),

  // Exams
  date-note("Midterm Exam", datetime(year: 2026, month: 2, day: 23), kind: "exam", body: [Midterm Exam covering material from sessions 1-10.]),
  date-note("Final Exam", datetime(year: 2026, month: 5, day: 4), kind: "exam", body: [Final Exam covering material from sessions 11-20.])
)

// Notable links and artists
// - https://smarthistory.org/lawrence-paul-yuxweluptun-leaving-reservation-ottawa/
// 