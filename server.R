function(input, output) {




	output$plot1 <- renderPlot({
		# plot(Days_Failure_Count())
		plot(c(1,2,3,4,5)
		})
	output$plot2 <- renderPlot({
		# plot(Inventory_Level())
		plot(c(1,2,3,4,5)
		})	

}