function(input, output) {

	Stock_level = reactive(input$initial)
	Days_Failure_Count = reactive(rpois(365,input$lambda))
	
	Inventory_Level = function() {
		Replenish_Level = rep(0,365)
		Inventory_Level_st = Inventory_Level_ed = vector()
		Replenish_Level[35:365] = Days_Failure_Count()[1:(365-34)]
		Inventory_Level_st[1]=Stock_level()
		Inventory_Level_ed[1]=Inventory_Level_st[1] - Days_Failure_Count()[1] + Replenish_Level[1]
		for (i in 2:365) {
			Inventory_Level_st[i]=Inventory_Level_ed[i-1];
			Inventory_Level_ed[i]=Inventory_Level_st[i] - Days_Failure_Count()[i] + Replenish_Level[i]
		}
	# return(Daily_Failure_Count())
	return(Inventory_Level_ed)
	}
		
	output$plot1 <- renderPlot({
		plot(Days_Failure_Count())
	})
	output$plot2 <- renderPlot({
		plot(Inventory_Level())
	})	

}