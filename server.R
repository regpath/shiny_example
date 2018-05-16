function(input, output) {

	Stock_level = reactive(input$initial)
	Days_Failure_Count = reactive(rpois(365,input$lambda))
	
	output$plot1 <- renderPlot({
		plot(Days_Failure_Count())
		})
	output$plot2 <- renderPlot({
		# plot(Inventory_Level())
		plot(c(1,2,3,4,5))
		})	

}