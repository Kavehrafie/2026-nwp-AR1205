#import "templates/nwp-syllabus.typ": template
#import "lib/timetable.typ": *

#show: doc => template(
  number: [AR2015],
  name: [Introduction to the History of Global Art II],
  instructor: "Kaveh Rafie",
  email: "krafie@nwpolytech.ca",
  semester: "Fall",
  year: 2026,
  dept: "Fine Arts",
  logo: "../../../assets/logo.svg",
  officeHours: [Wednesdays 2:30 PM -- 3:30 PM or by appointment],
  officeLoc: link("https://nwpolytech.zoom.us/xxxx"),
  doc,
)


= Calendar Description

The course examines art from the 15th century to the 20th century, focusing on various art forms with examples from both the non-Western and Western canons. It includes case studies from diverse regions, which explore a range of different forms of expression. This course will familiarize students with basic terms and concepts used in discussing art and cultural artifacts. While it is structured chronologically, it does not cover every period or geographical region. The purpose of the course is to equip students with the knowledge and skills necessary for further education by providing them with a foundational understanding of art history and some of its most significant moments.

= Prerequisite/Corequisite(s)
None

= Required Materials
No textbook requires. Readings will be provided on #underline[myClass].



= Course Schedule / Tentative Timeline

#schedule(
  start: datetime(year: 2026, month: 1, day: 6),
  days: (3, 5),
  holidays: (
    holiday("Family Day", datetime(year: 2026, month: 2, day: 16)),
    holiday-range("Winter Break", datetime(year: 2026, month: 2, day: 17), datetime(year: 2026, month: 2, day: 20)),
    holiday("Good Friday", datetime(year: 2026, month: 4, day: 3)),
  ),
  events: (
    session("Introduction & Course Overview")[
      Overview of the course structure, objectives, and assessment methods.
    ]
  ),
)

// Jan 6 2026 - Apr 23 2026
// last day of classes: Apr 13 2026
