#import "lib/timetable.typ": holiday, holiday-range

#let start-date = datetime(year: 2026, month: 1, day: 6)
#let class-days = (1, 5)

#let holidays = (
  holiday("Family Day", datetime(year: 2026, month: 2, day: 16)),
  holiday-range("Winter Break", datetime(year: 2026, month: 2, day: 17), datetime(year: 2026, month: 2, day: 20)),
  holiday("Good Friday", datetime(year: 2026, month: 4, day: 3)),
)


