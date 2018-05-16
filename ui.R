fluidPage(

  # App title ----
  titlePanel("Input"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    sidebarPanel(

      # Input: Slider for the number of bins ----
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)

    )
,

    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Header + summary of distribution ----
      h4("Daily Failure Count"),
      plotOutput("plot1"),

      # Output: Header + table of distribution ----
      h4("Daily Inventory Level"),
      tableOutput("plot2")
    )

  )
)