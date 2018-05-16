pageWithSidebar(
  sidebarPanel(
    numericInput("initial", "Initial stock", 20),
    numericInput("lambda", "Average daily failure count", 0.33)
  ),
  mainPanel(
    plotOutput('plot1'),
	plotOutput('plot2')
  )
)