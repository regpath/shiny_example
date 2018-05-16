pageWithSidebar(
	headerPanel('Stock'),
	sidebarPanel(
		numericInput("initial", "Initial stock", 20),
		numericInput("lambda", "Average daily failure count", 0.33)
	),
	mainPanel(
		plotOutput('plot1'),
		plotOutput('plot2'),
		tableOutput('table1'),
		textOutput('text1'),
		textOutput('text2'),
		textOutput('text3'),
		textOutput('text4')
	)
)