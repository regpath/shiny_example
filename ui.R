fluidPage(

  # App title ----
  titlePanel("Input"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input: Specify the number of observations to view ----
      numericInput("initial", "Initial stock", 20),

      # Input: Specify the number of observations to view ----
      numericInput("lambda", "Average daily failure count", 0.33),

      # Include clarifying text ----
      helpText("Note: while the data view will show only the specified",
               "number of observations, the summary will still be based",
               "on the full dataset."),

      # Input: actionButton() to defer the rendering of output ----
      # until the user explicitly clicks the button (rather than
      # doing it immediately when inputs change). This is useful if
      # the computations required to render output are inordinately
      # time-consuming.
      actionButton("update", "Update View")

    ),

    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Header + summary of distribution ----
      h4("Summary"),
      verbatimTextOutput("summary"),

      # Output: Header + table of distribution ----
      h4("Observations"),
      tableOutput("view")
    )

  )
)