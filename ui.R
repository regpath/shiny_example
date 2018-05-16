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

    ),

    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Header + summary of distribution ----
      h4("Daily Failure Count"),
      plotOutput("output$plot1"),

      # Output: Header + table of distribution ----
      h4("Daily Inventory Level"),
      tableOutput("output$plot2")
    )

  )
)