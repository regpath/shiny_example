pageWithSidebar(
	sidebarPanel(
      numericInput("initial", "Initial stock", 20),
      numericInput("lambda", "Average daily failure count", 0.33)
	)
	,
	mainPanel(
    h4("Daily Failure Count"),
    plotOutput("plot1"),
    h4("Daily Inventory Level"),
    plotOutput("plot2")
	)
)