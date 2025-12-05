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
  [Overview of the course structure, objectives, and assessment methods.],
  // Sources:
  // Introduction in Stokstad
)

#let session-review-14th-15th = session(
  "Renaissance",
  [A review of 14th and 15th century and the rise of Renaissance.
  \
    - Key artists: Giotto, Masaccio, Donatello, Botticelli.
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
  "High Renaissance",
  [Study of the High Renaissance period and its masterpieces.
  \
    - Key artists: Leonardo da Vinci, Michelangelo, Raphael.
  ]
)

#let session-new-world = session(
  "Art of the New World",
  [Examination of art from the Americas during the Age of Exploration.
  \
    - Focus on indigenous art forms and European influences.
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

#let session-aztec-inca = session(
  "Aztec Art and Architecture and Inca Art and Architecture",
  [Exploration of Aztec and Inca art forms and architectural achievements.]
)

#let session-north-american-indigenous = session(
  "North American Indigenous Art",
  [Study of indigenous art forms from various North American cultures.]
)

