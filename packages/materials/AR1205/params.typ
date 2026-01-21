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
    Overview of the course structure, objectives, and assessment methods.

    _Read_:
    // - #link("https://smarthistory.org/introduction-to-art-historical-analysis/?sidebar=the-basics-of-art-history")["Introduction to understanding art" by Robert Glass] 
    // - #link("https://smarthistory.org/introduction-iconographic-analysis/?sidebar=the-basics-of-art-history")["Iconography and iconographic analysis, an introduction" by Lauren Kilroy-Ewbank]
    - Sylvia Barnet, "Formal Analysis and Style" in _A Short Guide to Writing about Art_ (available on myClass)
  ],
  // Sources:
  // Introduction in Stokstad
)


#let session-early-italian-renaissance = session(
  "The Early Italian Renaissance: Optics, Anatomy, and Humanism", 
  [
    From mathematics to the invention of linear perspective in Florence.
  
    _Key artists_: Masaccio, Donatello, Brunelleschi, Botticelli.

    _Read_:
    - Hans Belting, _Florence and Baghdad: Renaissance Art and Arab Science_, pp. 173--185
    - #link("https://smarthistory.org/humanism-italian-renaissance-art/")["Humanism in Italian renaissance art" by Heather Graham]
    - #link("https://smarthistory.org/the-study-of-anatomy/")["The study of anatomy" by Dr. Steven Zucker and Dr. Beth Harris]
    
    _Watch_:
    - #link("https://youtu.be/eOksHhQ8TLM")[Linear perspective explained]
    - #link("https://youtu.be/bkNMM8uiMww")[Linear Perspective: Brunelleschi’s Experiment]
    - #link("https://youtu.be/JFtMgt0nqgU")[Sandro Botticelli, La Primavera (Spring)]
    - #link("https://youtu.be/mdd7LhVx00o")[Masaccio, Holy Trinity]
    - #link("https://youtu.be/0_p8USD0fjY")[Donatello, David]
    - #link("https://youtu.be/Ly2-n1KqNko")[Fra Filippo Lippi, Madonna and Child with Two Angels]
    - #link("https://youtu.be/1wDFFqcXZOo")[Alberti, Façade of Santa Maria Novella, Florence]
    - #link("https://youtu.be/8e20mMzj5Ug")[Andrea Mantegna, Dead Christ]
  ]
)

#let session-northern-renaissance = session(
  "The Northern Renaissance: Sacred Realism and the Self",
  [
    Devotion, detail, and the construction of identity through the "Moment of Self-Portraiture".
  
    _Key artists_: Jan van Eyck, Robert Campin, Hieronymus Bosch, Albrecht Dürer.

    _Read_:
    - Joseph Leo Koerner, _The Moment of Self-Portraiture in German Renaissance Art_ (excerpt)
    // - #link("https://smarthistory.org/bosch-the-garden-of-earthly-delights/?sidebar=europe-1400-1500")["Hieronymus Bosch, The Garden of Earthly Delights" by Sally Hickson]
    - #link("https://smarthistory.org/reframing-art-history/printing-painting-northern-renaissance-art/")["Printing and painting in Northern Renaissance art" by Bonnie Noble]
   
    _Watch_:
    - #link("https://youtu.be/q1X0Lj7YEMs")[Workshop of Robert Campin, Annunciation Triptych (Merode Altarpiece)]
    - #link("https://youtu.be/SMOEKQtPsY4")[Hieronymus Bosch, The Garden of Earthly Delights ]
    // - #link("https://youtu.be/g4XZGhnFOwM")[Lucas Cranach the Elder, Adam and Eve]
    - #link("https://youtu.be/wAg7NQ0akkQ")[Jan van Eyck, The Arnolfini Portrait]
    - #link("https://youtu.be/udgNvPpDb2I")[Jan Van Eyck, The Ghent Altarpiece (part 1)] 
    - #link("https://youtu.be/JVhwinCiELI")[Jan Van Eyck, The Ghent Altarpiece (part 2)]
    - #link("https://youtu.be/ZoiY6ZLEKaY")[Albrecht Dürer, Self-Portrait (1500)]
    - #link("https://youtu.be/C3DmiEsvs6U")[Albrecht Dürer’s woodcuts and engravings]
  ]
)

#let session-high-renaissance = session(
  "The Spirit of the High Renaissance",
  [
    Exploration of High Renaissance art and markets.
  
    _Key artists_: Leonardo da Vinci, Michelangelo, Raphael.

    _Read_:
      // - Evelyn Welch, "Markets and Metaphors" in _Shopping in the Renaissance: Consumer Cultures in Italy 1400-1600_
      // - #link("https://smarthistory.org/humanism-italian-renaissance-art/?sidebar=europe-1400-1500")["Humanism in Italian renaissance art" by Heather Graham]
      - #link("https://smarthistory.org/leonardo-da-vinci-vitruvian-man/?sidebar=europe-1500-1600")["Leonardo da Vinci, 'Vitruvian Man'" by Letha Ch'ien]
      // - #link("https://smarthistory.org/michelangelo-ceiling-of-the-sistine-chapel/?sidebar=europe-1500-1600")["Michelangelo, Ceiling of the Sistine Chapel" by Christine Zappella]
      - #link("https://smarthistory.org/raphael-introduction/?sidebar=europe-1500-1600")["Raphael, an introduction" by Heather Graham]
      - #link("https://smarthistory.org/palladio-la-rotonda/")["Andrea Palladio, La Rotonda" by Jimena Berzal de Dios ]


    _Watch_:
    // - #link("https://youtu.be/8e20mMzj5Ug")[Andrea Mantegna, Dead Christ]
    - #link("https://youtu.be/94xKRkCHlv0")[Leonardo, The Virgin of the Rocks]
    - #link("https://youtu.be/XCg7o4onjxs")[Leonardo, Last Supper]
    - #link("https://youtu.be/B06PK4yZwvY")[Leonardo, Mona Lisa]
    - #link("https://youtu.be/QdlP8ai8trw")[Michelangelo, David]
    - #link("https://youtu.be/R5UK0dEFSoM")[Saint Peter’s Basilica]
    - #link("https://youtu.be/QXIXA4_5ehw")[Donato Bramante, Tempietto, Rome]
    - #link("https://youtu.be/qD6ct0VS15c")[Titian, Venus of Urbino]
    - #link("https://youtu.be/9g-r2007Y8c")[Paolo Veronese, Feast in the House of Levi]

  ]
)

#let session-mannerism = session(
  "From the High Renaissance to Mannerism",
  [
    Analysis of the Mannerist style and its departure from Renaissance ideals.

    _Key artists_: From Titian to Pontormo, Parmigianino, El Greco.

    _Read_:
    - Arnold Hauser, "The Concept of Mannerism" in _The Social History of Art, Vol. II: Mannerism and Art in the Baroque Era_

    _Watch_:
    - #link("https://youtu.be/zfv-dGvFxIE")[Michelangelo, Pietà]
    - #link("https://youtu.be/PEE3B8Fsuc0")[Michelangelo, Ceiling of the Sistine Chapel]
    - #link("https://youtu.be/h44bnIGogu8")[Michelangelo, Slaves]
    - #link("https://youtu.be/qD6ct0VS15c")[Titian, Venus of Urbino]
    - #link("https://youtu.be/suIUUGdNyWk")[Parmigianino, Madonna with the Long Neck]
    - #link("https://youtu.be/tUOKkeEOkXk")[Michelangelo, Laurentian Library]
    - #link("https://youtu.be/YhsjS5CtCTE")[Jacopo Tintoretto, Last Supper]
    - #link("https://youtu.be/N09QNm3XKW4")[El Greco, The Burial of the Count of Orgaz]
    - #link("https://youtu.be/Pj3HdzOR2pY")[Pieter Bruegel the Elder, Hunters in the Snow (Winter)]
  ]
)

#let session-new-world = session(
  "Art in Encounters: The Global Baroque",
  [
    The "New World" after contact: Hybridity, tequitqui, and the global baroque.

    _Read_:
    - TBA
    // - Claire Farago, "On the Peripatetic Life of Objects in Era of Globalization" in #text(style: "italic")[@CCMEA]
    // - #link("https://smarthistory.org/featherworks/")["Featherworks: The Mass of St. Gregory" by Lauren Kilroy-Ewbank]
    // - #link("https://smarthistory.org/medici-americas/?sidebar=europe-1500-1600")["The Medici collect the Americas" by Lauren Kilroy-Ewbank]
    // - #link("https://smarthistory.org/cabrera-portrait-of-sor-juana-ines-de-la-cruz/?tl=cabrera-portrait-of-sor-juana-ines-de-la-cruz&sidebar=north-america-1500-1800")[Miguel Cabrera, Portrait of Sor Juana Inés de la Cruz]
    
    _Watch_:
    - TBA
  ]
)


#let session-baroque-i = session(
  "Baroque and Counter-Reformation",
  [
    Investigation of the rise of Baroque art.
  
    _Read_:
    // - Gauvin Alexander Bailey, "Introduction," in _Baroque & Rococo_
    - #link("https://smarthistory.org/global-baroque-introduction/?tl=global-baroque-introduction&sidebar=europe-1600-1700")["The global Baroque, an introduction" by Carmen Ripollés]
    - #link("https://smarthistory.org/artemisia-gentileschi-self-portrait-pittura/?tl=artemisia-gentileschi-self-portrait-pittura&sidebar=europe-1600-1700")["Artemisia Gentileschi, Self-Portrait as the Allegory of Painting or La Pittura" by Letha Ch'ien]
    - #link("https://smarthistory.org/juan-sanchez-de-cotan-quince-melon-and-cucumber/?tl=juan-sanchez-de-cotan-quince-melon-and-cucumber&sidebar=europe-1600-1700")["Juan Sanchez Cotán, Quince, Cabbage, Melon and Cucumber" by Sally Hickson]
    // - Gauvin Alexander Bailey,  _Art of Colonial Latin America_
    - #link("https://smarthistory.org/pieter-aertsen-meat-stall/?tl=pieter-aertsen-meat-stall&sidebar=europe-1500-1600")["Pieter Aertsen, Meat Stall" by Irene Schaudies]

    _Watch_:
    - #link("https://youtu.be/EFHPAbHaoqk")[How to recognize Baroque art?]
    - #link("https://youtu.be/asLQmxK7ExY")[Caravaggio, The Supper at Emmaus]
    - #link("https://youtu.be/JftEcBnopPI")[Caravaggio, The Conversion of St. Paul (or The Conversion of Saul)]
    - #link("https://youtu.be/EFsaaK1w2Ao")[Gian Lorenzo Bernini, Baldacchino, Saint Peter’s]
    - #link("https://youtu.be/_IBntk3Oj24")[Diego Velázquez, Las Meninas]
    - #link("https://youtu.be/dgsogHXtwyA")[Nicolas Poussin, Et in Arcadia Ego]
    // - Julie Hochstrasser, "Remapping Dutch Art in Global Perspective" in #text(style: "italic")[@CCMEA]
  ]
)

#let session-baroque-ii = session(
  "Mapping the Dutch Golden Age",
  [
    Study of Baroque art in the Netherlands and Flanders.

    _Key artists_: Rembrandt, Rubens, Vermeer.

    _Read_:
    - Svetlana Alpers, "The Mapping Impulse in Dutch Art" in _The Arts of Describing: Dutch Art in the Seventeenth Century_
    - #link("https://smarthistory.org/rembrandt-self-portrait-kenwood/?tl=rembrandt-self-portrait-kenwood&sidebar=europe-1600-1700")["Rembrandt, Self-Portrait with Two Circles" by Saskia Beranek]

    _Watch_:
    - #link("https://youtu.be/stMsneN1xw4")[What is genre painting?]
    - #link("https://youtu.be/agy4wXMF9wg")[Symbolism and meaning in Dutch still life painting]
    - #link("https://youtu.be/m-Wt51ScnNo")[Asia in Holland, 17th-century Delftware]
    - #link("https://youtu.be/K9iMsmhBOjk")[Peter Paul Rubens, The Consequences of War]
    - #link("https://youtu.be/9fEublFSTOg")[Frans Hals, Malle Babbe]
    - #link("https://youtu.be/xt2M4HTw29A")[Judith Leyster, Self-Portrait]
    - #link("https://youtu.be/DhefUahS55o")[Rembrandt, The Anatomy Lesson of Dr. Tulp]
    - #link("https://youtu.be/0D_rc92g27w")[Rembrandt, The Night Watch]
    // - #link("https://youtu.be/_38xl7p4VaM")[Johannes Vermeer, Young Woman with a Water Pitcher]
    - #link("https://youtu.be/WO1I1dN0DaA")[Johannes Vermeer, Woman Holding a Balance]
    - #link("https://youtu.be/L7P3kBJ3scg")[Jacob van Ruisdael, View of Haarlem with Bleaching Grounds]
  ]
)

#let session-baroque-iii = session(
  "Rococo & Enlightenment",
  [
    Exploration of the Rococo style and its characteristics during the reign of Louis XV.
  \
    _Key artists_: Watteau, Fragonard, Boucher.
  
    _Read_:
    - TBA
  
    _Watch_:
    - TBA
    // - #link("https://youtu.be/8ZlH2JswO3Q")[Antoine Watteau, Pilgrimage to Cythera]
    // - #link("https://youtu.be/lnJRkY0mZh4")[François Boucher, Madame de Pompadour]
    // - #link("https://youtu.be/bE4BBy2lczM")[Jean-Honoré Fragonard, The Swing]
  
  ]
)


#let session-neoclassicism-romanticism = session(
  "Neoclassicism and Romanticism",
  [
    Study of Neoclassical and Romantic art movements.

    _Key artists_: Ingres, Delacroix, Goya.

    _Read_:
    - TBA

    _Watch_:
    - TBA
  ]
)

#let session-realism = session(
  "Realism",
  [
    Analysis of the Realist movement and its focus on everyday life.
  
    _Read_:
    - TBA
    // - Linda Nochlin, _Realism_ (excerpt)

    _Watch_:
    - TBA
  ]
)

#let session-photography-impressionism = session(
  "The Modern Gaze: Photography & Impressionism",
  [
    How the invention of photography challenged painting and gave rise to Impressionism.
  
    _Key figures_: Daguerre, Talbot, Monet, Renoir, Degas.

    _Read_:
    - TBA
    // - #link("https://smarthistory.org/early-photography-niepce-talbot-and-muybridge/")["Early Photography" by Rebecca Jeffrey Easby]
    // - #link("https://smarthistory.org/a-beginners-guide-to-impressionism/")["A beginner's guide to Impressionism"]
    
    _Watch_:
    - TBA
    // - #link("https://youtu.be/Zn4q3G65x8c")[Daguerre, The Artist's Studio]
    // - #link("https://youtu.be/rTHb8Qf5bKk")[Monet, Rouen Cathedral Series]
  ]
)

#let session-post-impressionism = session(
  "Post-Impressionism",
  [
    Exploration of Post-Impressionist artists and their diverse styles.

    _Read_:
    - TBA
    // - Carol Mavor, "Gauguin in Black and Blue" in #text(style: "italic")[@CCMEA]

    _Watch_:
    - TBA
  ]
)


#let session-south-asian-art = session(
  "From the 14th Century to the Mogul Empire in the Indian Subcontinent and Beyond",
  [
    Study of South Asian art from the 14th century.

    _Read_:
    - TBA
    // - #link("https://smarthistory.org/the-qutb-complex-and-early-sultanate-architecture/?sidebar=asia-1000-1500")["The Qutb complex and early Sultanate architecture" by Arathi Menon]
    // - #link("https://smarthistory.org/art-and-architecture-of-vijayanagara-empire/?sidebar=asia-1000-1500")["Art and architecture of the Vijayanagara empire" by Gita V. Pai]
    // - #link("https://smarthistory.org/indo-portuguese-ivory-statuettes/?sidebar=asia-1500-1900")["Christian art in India: Indo-Portuguese ivory statuettes" by Marsha G. Olson]
    // - #link("https://smarthistory.org/meenakshi-madurai/?sidebar=asia-1500-1900")["Meenakshi Temple at Madurai" by Edward Fosmire]
    // - #link("https://smarthistory.org/akbarnama/?sidebar=asia-1500-1900")["Illustration from the Akbarnama" by Katrina Klaasmeyer]
    // - #link("https://smarthistory.org/the-taj-mahal/?sidebar=asia-1500-1900")["The Taj Mahal" by Roshna Kapadia]
    // - #link("https://smarthistory.org/wat-phra-kaew-temple-of-the-emerald-buddha/")[
    //   "Wat Phra Kaew (Temple of the Emerald Buddha)" by Melody Rod-ari
    // ]

    _Watch_:
    - TBA
  ]
)

#let session-mongol = session(
  "Art under the Mongol Empire",
  [
    Examination of art during the Mongol Empire and its cultural exchanges.
  ]
)

#let session-chinese-art = session(
  "Chinese Art from the late Yuan through the Qing Dynasty",
  [
    An overview of Chinese art of the Yuan, Ming, and Qing Dynasties.

    _Key topics_: Literati painting, porcelain, the Forbidden City.
  
  _Read_:
  - Julie Hochstrasser, "Remapping Dutch Art in Global Perspective: Other Points of View" in #text(style: "italic")[@CCMEA], pp. 43--48 
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
  [
    From the Muromachi to the Edo period.

    _Key topics_: Zen gardens, tea ceremony, Ukiyo-e prints.

  _Read_:
  - TBA
  // - From "Japonisme: Cultural Crossings between Japan and the West"
  // - #link("https://smarthistory.org/ryoanji-peaceful-dragon-temple/?sidebar=asia-1000-1500")["Ryōanji (Peaceful Dragon Temple)" by Yoonjung Seo]
  // - #link("https://smarthistory.org/edo-period/?sidebar=asia-1500-1900")["Edo period, an introduction" by Sonia Coman]
  // - #link("https://smarthistory.org/francis-xavier-christianity-japan/?sidebar=asia-1500-1900")["A portrait of St. Francis Xavier and Christianity in Japan" by Rachel Miller]
  // - #link("https://smarthistory.org/different-places-japanese-porcelain-english-gilt-bronze-mounts/?sidebar=asia-1500-1900")["Different places: Japanese porcelain with English gilt-bronze mounts" by Jeffrey Weaver]
  // - #link("https://smarthistory.org/kabuki-actor-prints/?sidebar=asia-1500-1900")["Kabuki actor prints"]
  // - #link("https://smarthistory.org/hokusai-under-the-wave-off-kanagawa-the-great-wave/?sidebar=asia-1500-1900")["Katsushika Hokusai, Under the Wave off Kanagawa (The Great Wave)" by Leila Anne Harris]

  _Watch_:
  - TBA
  // - #link("https://youtu.be/vwoK8-y-5_U")[Bamboo in the Four Seasons: painting and poetry in Japan]
  // - #link("https://youtu.be/2ft6OfcbIfk")["Different places: Japanese porcelain with English gilt-bronze mounts" by Jeffrey Weaver]
  ]
)

#let session-african-art = session(
  "African Art After European Contact",
  [
    Art, power, and the impact of colonization.

    _Read_:
    // - #link()[] in _African Art at The Met_
  //   - Suzanne Preston Blier, "Imaging otherness in ivory: African portrayals of the Portuguese ca. 1492" in _Art Bulletin_
  //   - #link("https://smarthistory.org/rites-of-passage/")["Rites of passage in Africa" by Christa Clarke]
  // - #link("https://smarthistory.org/masquerade-basics/?tl=masquerade-basics&sidebar=africa-1500-today")["Masquerade basics" by Kristen Laciste]
  // - #link("https://smarthistory.org/african-art-and-the-effects-of-european-contact-and-colonization/")["African art and the effects of European contact and colonization" by Peri Klemm]
  - TBA
  _Watch_:
  // - #link("https://www.youtube.com/watch?v=H9iy5TTALBQ")[Power Figure: Male (Nkisi)]
  - TBA
  ]
)

#let session-pacific-art = session(
  "Art of Pacific Cultures",
  [
    Arts of Oceania: Polynesia, Micronesia, and Melanesia.
  
  _Read_:
  - TBA
  // - Adrienne L. Kaeppler, "The Pacific Arts of Polynesia and Micronesia" (an excerpt)

  _Watch_:
  - TBA
  // - #link("https://youtu.be/rrJkjEYJLWs")[Navigation Chart, Marshall Islands]
  // - #link("https://youtu.be/EjtHXyRkt1A")[Rapa Nui (Easter Island) Moai]
  ]
)

#let session-pre-colombian-art = session(
  "Pre-Columbian Art and Architecture",
  [
    Exploration of Aztec and Inca art and architectural achievements.
  
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
  [
    Study of indigenous art forms from various North American cultures.

    _Read_:
    - TBA
    // - Janet Catherine Berlo and Ruth B. Phillips, "Native North American Art" in _Native North American Art_

    _Watch_:
    - TBA
    // - #link("https://youtu.be/ifY8gBIonAc")[Mesa Verde]
  ]
)

#let session-pre-war = session(
  "Pre-War Modernism",
  [
    Overview of early 20th-century modernist movements such as Fauvism, Cubism, and Expressionism.

    _Read_:
    - TBA

    _Watch_:
    - TBA
  ]
)  

#let session-student-presentations = session(
  "Student Presentations",
  [
    Student-led analyses connecting course themes to selected case studies.
  ]
)

#let session-interwar = session(
  "Interwar Backlash",
  [
    Examination of modernist movements between the World Wars.

    _Read_:
    - TBA

    _Watch_:
    - TBA
  ]
)

#let session-post-war = session(
  "Post-War Art Movements",
  [
    Overview of Abstract Expressionism and other post-war art movements.

    _Read_:
    - TBA

    _Watch_:
    - TBA
  ]
)

#let session-neo-avant-garde = session(
  "Neo-Avant-Garde Movements",
  [
    Study of Pop Art, Minimalism, and Conceptual Art.

    _Read_:
    - Lucy R. Lippard, "Introduction" in _Pop Art_

    _Watch_:
    - #link("https://youtu.be/9bWJt2hjBH0")[Jasper Johns, Flag]
    - #link("https://youtu.be/tvpp2lAD9iY")[Robert Rauschenberg, Bed]
    - #link("https://youtu.be/lXfzq27fGvU")[Andy Warhol, Gold Marilyn Monroe]
    - #link("https://youtu.be/pgw0-nZdW94")[The case for Andy Warhol]
    - #link("https://youtu.be/N-mt2tiRJ7U")[Claes Oldenburg, Floor Cake]
    ])

#let session-contemporary-social-activism = session(
  "From Feminist Art to Social Activism",
  [
    Exploration of contemporary art practices addressing social and political issues.
  ]
)

#let session-biennials-globalization = session(
  "Biennials and Globalization",
  [
    Study of the role of biennials in the global art scene and cultural exchange.
  ]
)

#let session-baroque-rococo-part1 = session(
  "Baroque and Rococo Part 1",
  [
    Examination of Baroque and Rococo art in Europe.
  ]
)

#let session-baroque-rococo-part2 = session(
  "Baroque and Rococo Part 2",
  [
    Continuation of the study of Baroque and Rococo art in Europe.
  ]
)
    
#let session-final = session(
  "Final Review & Course Wrap-Up",
  [
    Review of key concepts and preparation for final assessments.
  ]
)

#let session-contemporary-moment = session(
  "Art after the Long Sixties",
  [
    Exploration of movements leading to contemporary art practices.
  ]
)


#let important-dates = (
  date-note("Artifact I", datetime(year: 2026, month: 1, day: 19), kind: "assignment", body: [_Linear Perspective in Action_ is due.]),
  date-note("Artifact II", datetime(year: 2026, month: 2, day: 9), kind: "assignment"),
  date-note("Artifact III", datetime(year: 2026, month: 2, day: 27), kind: "assignment"),
  date-note("Artifact IV", datetime(year: 2026, month: 3, day: 23), kind: "assignment"),
  date-note("Artifact V", datetime(year: 2026, month: 4, day: 13), kind: "assignment"),

  // Exams
  date-note("Midterm Exam", datetime(year: 2026, month: 3, day: 2), kind: "exam", body: [Midterm Exam covering material from weeks 1-8.]),
  date-note("Final Exam", datetime(year: 2026, month: 4, day: 16), kind: "exam", body: [Final Exam covering material from weeks 9-14 will be available for 24hr.])
)

// Notable links and artists
// - https://smarthistory.org/lawrence-paul-yuxweluptun-leaving-reservation-ottawa/
// 