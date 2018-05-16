pageWithSidebar(

	sidebarPanel(
	  # Input: Specify the number of observations to view ----
      numericInput("initial", "Initial stock", 20),

      # Input: Specify the number of observations to view ----
      numericInput("lambda", "Average daily failure count", 0.33)
	,
	mainPanel(

    h4("Daily Failure Count"),
    plotOutput("plot1"),

    h4("Daily Inventory Level"),
    plotOutput("plot2")
	)


)