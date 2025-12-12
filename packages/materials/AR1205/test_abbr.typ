#import "@preview/abbr:0.3.0"

#let abbreviations = (
  ("CCMEA", "Cultural Contact and the Making of European Art since the Age of Exploration"),
)

#show: abbr.show-rule

#abbr.make(..abbreviations)

See @CCMEA.
