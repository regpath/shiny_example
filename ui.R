fluidPage(

  # App title ----
  titlePanel("Input"),

      # Input: Specify the number of observations to view ----
      numericInput("initial", "Initial stock", 20),

      # Input: Specify the number of observations to view ----
      numericInput("lambda", "Average daily failure count", 0.33),

      # Output: Header + summary of distribution ----
      h4("Daily Failure Count"),
      plotOutput("plot1"),

      # Output: Header + table of distribution ----
      h4("Daily Inventory Level"),
    #  plotOutput("plot2")
    )