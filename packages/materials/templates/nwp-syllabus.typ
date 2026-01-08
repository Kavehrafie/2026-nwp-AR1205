#import "@preview/abbr:0.3.0"

#let template(
  number: none,
  name: none,
  instructor: none,
  email: none,
  semester: none,
  year: none,
  dept: "Fine Arts",
  logo: none,
  officeHours: none,
  officeLoc: none,
  isDraft: true,
  doc,
) = {
  set page(
    paper: "us-letter",
    margin: (x: 1in, y: 1in),
    header: [
      #if logo != none {
        image(logo, height: 0.4in)
      }
    ],
    footer: context [
      #grid(
        columns: (1fr, auto),
        gutter: 1em,
        [#text(size: 0.8em)[Copyright © 2024, Northwestern Polytechnic and its licensors.]], counter(page).display(),
      )
    ],
  )

  set text(font: "Noto Sans", size: 12pt)

  set list(
    indent: 2em,
  )

  show link: set text(fill: blue)
  show: abbr.show-rule

  show heading.where(level: 1): it => block(
    below: 1em,
    text(size: 0.9em, weight: "bold", upper(it.body)),
  )

  // Show heading references as the heading text instead of "Section X"
  show ref: it => {
    let el = it.element
    if el != none and el.func() == heading {
      link(it.target)[#el.body]
    } else {
      it
    }
  }

  if isDraft {
    box(
      fill: red,
      inset: 0.4em,
      radius: 0.1em,
    )[
      #text(fill: white, size: 0.8em)[
        *This is a draft version of the syllabus and is subject to change.*
      ]
    ]
    v(1em)
  }

  align(center)[
    #set par(leading: 1.5em)

    #text(1.2em, weight: "bold")[#upper[Department of #dept]] \
    #text(1.2em, weight: "bold")[COURSE OUTLINE --- #semester #year] \
    #text(1.3em, weight: "bold")[#number: #name --- 3 (3-0-0) 45hrs for 15 weeks]
  ]


  v(1em)

  [
    Northwestern Polytechnic acknowledges that our campuses are located on Treaty 8 territory, the ancestral and present-day home to many diverse First Nations, Metis, and Inuit people. We are grateful to work, live and learn on the traditional territory of Duncan's First Nation, Horse Lake First Nation and Sturgeon Lake Cree Nation, who are the original caretakers of this land.

    We acknowledge the history of this land and we are thankful for the opportunity to walk together in friendship, where we will encourage and promote positive change for present and future generations.
  ]

  v(1em)

  grid(
    columns: (auto, 1fr, auto, 1fr),
    gutter: 1em,
    [*INSTRUCTOR:*], [#instructor],
    [*PHONE:*], [+1 780-539-2911],
    [*OFFICE:*], [online],
    [*Email:*], [#email],
    [*OFFICE HOURS:*], grid.cell(colspan: 3)[#officeHours],
    [],
    grid.cell(
      colspan: 3,
    )[#officeLoc],
  )

  v(1em)

  doc

  pagebreak()

  [
    = Student Responsibilities

    Online Communication & Professionalism: Students are expected to maintain a
    high-level of professionalism across all course-related communications. Please
    conduct your communications as you would any other professional experience.
    Treat your colleagues with respect!
    Join the lecture on time and remain for the duration of class and related activities.
    Students can expect to put in a minimum of 4 hours per week on out-of-
    class work. Assignments will be expected on the date required.

    = Statement on Academic Misconduct <misconduct>

    Academic Misconduct will not be tolerated. For a more precise definition of academic misconduct and its consequences, refer to the Student Rights and Responsibilities policy available at https://www.nwpolytech.ca/about/polytechnic-leadership/policies-directory.

    \*\*Note: all Academic and Administrative policies are available on the same page.

    = Additional Information:

    == Plagiarism and the Use of LLMs or AI Tools
    Submitting AI-generated content as your own work is plagiarism. This includes work produced entirely or partially by LLMs (Large Language Models) or other AI tools without proper attribution.
    
    *You must own your intellectual work.* AI may assist with brainstorming, outlining, or refining language—but the ideas, analysis, and argument must be yours.
    
    *Permitted Use:*
    - Brainstorming ideas and exploring topics
    - Creating outlines or structure for your writing
    - Refining and improving your own writing (grammar, clarity, flow)
    - Generating examples to understand concepts (not to submit)
    
    *Prohibited Use:*
    - Copy-pasting AI-generated text into assignments without substantial revision
    - Having AI write essays, reports, or responses for you
    - Using AI to generate analysis or arguments you claim as your own
    
    *Requirements:*
    - All AI use must be cited (tool name and date)
    - You are solely responsible for all submitted content
    - AI errors, hallucinations, or misinformation will be treated as academic misconduct
    - ⚠️ Copy-pasting AI-generated content may result in academic integrity charges and formal reporting

  ]

  v(1fr)
  align(center)[
    #text(size: 0.8em)[
      Last updated: #datetime.today().display("[month repr:long] [day], [year]")
    ]
  ]
}

#let grade-table = [
  #show table.cell: it => {
    if it.y == 0 {
      set text(white, size: 0.9em)
      strong(it)
    } else {
      it
    }
  }

  #let filled = it => table.cell(fill: gray)[#it]

  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: horizon,
    inset: 0.8em,
    fill: (x, y) => if y == 0 { black },
    table.header(
      [Alpha Grade],
      [4-point Equivalent],
      [Percentage Guideline],
      [Alpha Grade],
      [4-point Equivalent],
      [Percentage Guideline],
    ),
    [A+], [4.0], [95--100], [C+], [2.3], [67--69],
    [A], [4.0], [85--94], [C], [2.0], [63--66],
    [A-], [3.7], [80--84], [C-], [1.7], [60--62],
    [B+], [3.3], [77--79], filled[D+], filled[1.3], filled[55--59],
    [B], [3.0], [73--76], filled[D], filled[1.0], filled[50--54],
    [B-], [2.7], [70--72], filled[F], filled[0.0], filled[0--49],
  )
]
