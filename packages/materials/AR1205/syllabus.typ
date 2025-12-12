#import "../templates/nwp-syllabus.typ": template, grade-table
#import "../lib/timetable.typ": *
#import "params.typ": *
#import "../spring-calendar.typ": start-date, class-days, holidays
#import "@preview/abbr:0.3.0"
#import "@preview/gentle-clues:1.2.0": *

#abbr.make(
  ("CCMEA", "Cultural Contact and the Making of European Art since the Age of Exploration"),
)

#let email = link("mailto:krafie@nwpolytech.ca")[krafie\@nwpolytech.ca]

#show: doc => template(
  number: [AR1205],
  name: [Introduction to the History of Global Art II],
  instructor: "Kaveh Rafie",
  email: email,
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

= Prerequisite(s)/Corequisite(s)
None

= Required Materials
No textbook requires. Readings will be provided on #underline[Perusall]. 

= Delivery Mode

This course is delivered synchronously online via Zoom: #link("https://nwpolytech.zoom.us/xxxx")

= LEARNING OUTCOMES

By the end of this course, students will be able to:

- Identify and describe major art movements and styles from the 15th to present.
- Analyze and interpret artworks using appropriate art historical terminology.
- Understand the cultural and historical contexts of various art forms.
- Critically engage with visual materials and articulate informed perspectives on art.
- Conduct basic research in art history and present findings effectively.

= Transferability 

Please consult the Alberta Transfer Guide for more information. You may check the transferability of this course at the Alberta Transfer Guide main page http://www.transferalberta.alberta.ca.

⚠️ For courses with alpha (letter) grading, a grade of D or D+ may not be acceptable for transfer to other post-secondary institutions. *Students are cautioned that it is their responsibility to contact the receiving institutions to ensure transferability.*

= Evaluations

#let evaluations = (
  ([@eval:participation], 20),
  ([@eval:weekly-discussion], 15),
  ([@eval:quizzes], 5),
  ([@evals:xams], 30),
  ([@eval:annotations], 20) ,
  ([@eval:creative], 10),
)

#let total-grade = evaluations.fold(0, (acc, row) => acc + row.at(1))
#assert(total-grade == 100, message: "Total grade must be 100%, found " + str(total-grade) + "%")

#grid(
  inset: (x: 2em),
  columns: (1fr, auto),
  gutter: 1em,
  ..evaluations.map(((label, weight)) => (upper(label), [#weight%])).flatten()
)


== Class Participation <eval:participation>

This class will be held synchronously online via Zoom. Active participation in Zoom sessions and activities is essential for a successful learning experience. Students are expected to engage with the material and contribute to discussions. Your grade is based on the following components:

=== Camera Policy
Turning your camera off will result in not receiving participation credit (10%) unless it is during a break or you have communicated with me in advance for accommodations.

=== Discussion Contribution
Actively contribute to class discussions by asking questions, responding to prompts, and engaging with your peers' ideas.

=== In-Class Activities  
Complete all micro-activities, such as polls and short collaborative tasks, announced during the session.

=== Note on Recordings
Sessions will be recorded for educational purposes. By participating, you consent to being recorded. If you miss a session, please email me to receive the link of the missed session.

#warning(title: [*Attendance Policy*])[
  Attendance for our live Zoom sessions is #upper[mandatory]. You are allowed no more than #upper[two] unexcused absences. Failure to address chronic absenteeism may result in failing the course.

  If social anxiety limits your participation, email #email to discuss alternatives.
]

== Weekly Discussion <eval:weekly-discussion>
Ask one question related to the week's lecture or weekly readings on myClass, and respond to at least two of your classmates' questions. 

- To receive #underline[full credit], your question should be thoughtful and relevant to the week's material. 
- Short or superficial replies will not receive credit.

== Quizzes <eval:quizzes>
There will be periodic quizzes based on the readings and lectures. These quizzes are designed to assess your understanding of the course material and your active note-taking during lectures.

== Reading Annotations <eval:annotations> 

Students are required to complete annotations on assigned readings using Perusall. These annotations will help deepen your understanding of the material and facilitate class discussions.

To receive #underline[full credit], students must engage with the readings by *highlighting key points*, *asking questions*, and *responding to peers' annotations*.

== Exams <evals:xams>

There will be two exams during the semester, each worth 15% of your final grade. The exams will cover material from lectures, readings, and discussions. They will consist of multiple-choice questions, short answers, and essay questions.

== Critical & Creative Exercises (10%) <eval:creative>

This component invites students to explore course concepts through a blend of written analysis and creative practice. Assignments are designed to be flexible, allowing for either a short critical essay or a creative project accompanied by a brief reflection.

Examples of activities include:
- *Critical Response:* A short essay analyzing a specific artwork or text.
- *Creative Application:* A practical project, such as constructing a linear perspective drawing or creating a digital composition (e.g., using Photoshop) to demonstrate understanding of spatial depth, accompanied by a short written explanation of the process and principles applied.

== Late Assignments and Missed Exams
Please submit your study guide responses by midnight on the date they are due. Assignments not turned in at that time will receive a score of zero that will stay in place until the assignment is received (Blackboard will not calculate your grade accurately otherwise). Assignments turned in after the due date will be marked down by 20%.

#warning[
Please note that most universities will not accept your course for transfer credit *IF* your grade is *less than C-*.
]

= Grading Chart for courses with Alpha Grading

#grade-table

⚫ #underline[Grades for this course will be assigned as a percentage.]

#pagebreak()

= Course Schedule (Tentative)\* 

#schedule(
  start: start-date,
  days: class-days,
  holidays: holidays,
  events: (
    session-intro,
    session-southern-northern-renaissance,
    session-high-renaissance,
    session-mannerism,
    session-new-world,
    session-south-asian-art,
    session-chinese-art,
    session-japanese-art,
    session-african-art,
    session-pacific-art,
    session-aztec-inca,
    session-north-american-indigenous,
    session-baroque-in-southern-europe,
    session-baroque-in-northern-europe,
    session-rococo,
    session-neoclassicism-romanticism,
    session-realism,
    session-impressionism,
    session-post-impressionism,
    session-pre-war,
    session-interwar,
    session-post-war,
    session-neo-avant-garde,
    session-towards-contemporary-art,
    session-final
  ),
)

// Jan 6 2026 - Apr 23 2026
// last day of classes: Apr 13 2026

#pagebreak()
