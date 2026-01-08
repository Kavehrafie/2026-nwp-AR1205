#import "../templates/nwp-syllabus.typ": template, grade-table
#import "schedule.typ": schedule-table, schedule-list
#import "params.typ": abbreviations
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/abbr:0.3.0"

#abbr.make(..abbreviations)

// helpers
#let it = body => text(style: "italic")[#body]

#let email = link("mailto:krafie@nwpolytech.ca")[krafie\@nwpolytech.ca]


#show: doc => template(
  number: [AR2205],
  name: [Art Since 1945],
  instructor: "Kaveh Rafie",
  email: email,
  semester: "Winter",
  year: 2026,
  isDraft: false,
  dept: "Fine Arts",
  logo: "../../../assets/logo.svg",
  officeHours: [Wednesdays 2:30 PM -- 3:30 PM or by appointment],
  officeLoc: link("https://nwpolytech.zoom.us/j/96343781955?pwd=EaAIYpJIvRExwTKpU6zCiJRXCG7CJp.1")[Zoom Link],
  doc,
)


= Calendar Description

This course examines post-1945 art movements, focusing on how rebellious and outsider art challenges and is absorbed by institutions. While centered on Western frameworks, it incorporates a global perspective, featuring both national and transnational artists. Students will analyze diverse media---including installation, painting, performance, photography, sculpture, and video---to develop a multifaceted understanding of contemporary art practice and theory.


= Prerequisite(s)/Corequisite(s)
None

= Required Materials
No textbook is required. Readings will be provided on #underline[myClass]. 

_Recommended_:
- Sylvan Barnet, #it[@ASGWA] (available at the library on reserve)
- Edward Lucie-Smith, #it[@MAS]
= Delivery Mode

This course is delivered synchronously online via Zoom: #link("https://nwpolytech.zoom.us/xxxx")

= LEARNING OUTCOMES

By the end of this course, students will be able to:

- Analyze key art movements and their socio-political contexts from 1945 to the present.
- Critically evaluate the role of institutions and the market in shaping contemporary art practices.
- Interpret and discuss artworks across various media, including installation, performance, and digital art.
- Understand and articulate the trends and themes in global contemporary art.
- Develop skills and vocabulary for discussing and writing about contemporary art.

= Transferability 

Please consult the Alberta Transfer Guide for more information. You may check the transferability of this course at the Alberta Transfer Guide main page http://www.transferalberta.alberta.ca.

#warning[
  For courses with alpha (letter) grading, a grade of *D* or *D+* may not be acceptable for transfer to other post-secondary institutions. *Students are cautioned that it is their responsibility to contact the receiving institutions to ensure transferability.*
]
= Evaluations

#let evaluations = (
  ([@eval:participation], 20),
  ([@eval:discussion], 15),
  ([@eval:quizzes], 5),
  ([@eval:artist-event-report], 10),
  ([@eval:presentation], 10),
  ([@eval:final-project], 40),
)

#let total-grade = evaluations.fold(0, (acc, row) => acc + row.at(1))
#assert(total-grade == 100, message: "Total grade must be 100%, found " + str(total-grade) + "%")

#grid(
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
Sessions will be recorded for educational purposes. By participating, you consent to being recorded. If you miss a session, please email me to receive the link to the missed session.

#warning(title: [*Attendance Policy*])[
  Attendance for our live Zoom sessions is #upper[mandatory]. You are allowed no more than #upper[two] unexcused absences. Failure to address chronic absenteeism may result in failing the course.

  If social anxiety limits your participation, email #email to discuss alternatives.
]

== Discussion Board <eval:discussion>
Ask one question related to the week's lecture or weekly readings on myClass, and respond to at least two of your classmates' questions. 

- To receive #underline[full credit], your question should be thoughtful and relevant to the week's material. 
- Short or superficial replies will not receive credit.

== Quizzes <eval:quizzes>
There will be periodic quizzes based on the readings and lectures. These quizzes are designed to assess your understanding of the course material and your active note-taking during lectures.

== Field Report <eval:artist-event-report> 
This assignment assesses your ability to critically engage with contemporary art outside the classroom. You will attend a virtual or local art event (e.g., exhibition, artist talk, workshop) and write a 1000-word report analyzing the experience. More details will be provided in #underline[myClass].

*Hint*: For writing an exhibition review see Sylvan Barnet, "Writing a Review of an Exhibition" #text(style: "italic")[@ASGWA], 1--34

== Presentation <eval:presentation>
Students will deliver a 6-8 minute presentation on a selected contemporary artist or art movement. You can choose to present solo or partner up with a classmate. I always encourage collaboration so working in pairs is highly recommended and will be rewarded with extra marks (5%).
The presentation should include visual aids (e.g., images of the works under discussion) and a brief Q&A session. A rubric will be provided in #underline[myClass].

== Final Project <eval:final-project>
The Final Project is a research project on the topics covered in this course; you are encouraged to focus on a specific artist, art movement, or theme in contemporary art related to your own interests and practice. You are expected to develop your project in two stages:

*Hint*: For developing your topic see Sylvan Barnet, "Getting Ideas for Essays" in #text(style: "italic")[@ASGWA], 75--130

#block(inset: (x: 1.8em, y:0.2em))[

=== Project Proposal (10%)
An approximately 250-word proposal outlining your research topic and objectives, along with a preliminary annotated bibliography. This proposal should demonstrate a clear working thesis and a plan for your research.

=== Final Essay Submission (30%)
A comprehensive research paper of approximately 1000--1250 words (or approximately 4 pages double-spaced). The essay should present a well-structured argument, supported by scholarly sources and critical analysis of relevant artworks. Proper citation and adherence to academic standards are required. Images of the artworks discussed should be included, along with proper captions.
]

#info[
  The writing assignments in the course require proper citation of sources. Please use Chicago style consistently throughout your work. Consult the #link("https://www.chicagomanualofstyle.org/home.html")[Chicago Manual of Style] or the #link("https://owl.purdue.edu/owl/research_and_citation/chicago_manual_17th_edition/cmos_formatting_and_style_guide/chicago_manual_of_style_17th_edition.html")[Purdue OWL] for guidance.
]

== Late Assignments and Missed Exams
Assignments must be submitted by midnight on the due date. Late submissions receive a zero until accepted (at my discretion; I may not accept them). Submissions after the due date may be marked down by 20%, depending on circumstances. For emergencies or extenuating circumstances, contact me before the due date.

#warning[
  Please note that most universities will not accept your course for transfer credit *IF* your grade is *less than C-*.
]

= Grading Chart for courses with Alpha Grading

#grade-table

⚫ #underline[Grades for this course will be assigned as a percentage.]

#pagebreak()

= Course Schedule (Working)\* 

#schedule-table

// Jan 6 2026 - Apr 23 2026
// last day of classes: Apr 13 2026



