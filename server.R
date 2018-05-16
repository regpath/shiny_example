function(input, output) {

	Stock_level = input$initial;                                   

	Days_Failure_Count = rpois(365,input$lambda)
	Replenish_Level = rep(0,365)
	Replenish_Level[35:365] = Days_Failure_Count[1:(365-34)]

	Monthly_Occur = vector();
	Monthly_Occur[1]=sum(Days_Failure_Count[1:31]);
	Monthly_Occur[2]=sum(Days_Failure_Count[32:59]);
	Monthly_Occur[3]=sum(Days_Failure_Count[60:90]);
	Monthly_Occur[4]=sum(Days_Failure_Count[91:120]);
	Monthly_Occur[5]=sum(Days_Failure_Count[121:151]);
	Monthly_Occur[6]=sum(Days_Failure_Count[152:181]);
	Monthly_Occur[7]=sum(Days_Failure_Count[182:212]);
	Monthly_Occur[8]=sum(Days_Failure_Count[213:243]);
	Monthly_Occur[9]=sum(Days_Failure_Count[244:273]);
	Monthly_Occur[10]=sum(Days_Failure_Count[274:304]);
	Monthly_Occur[11]=sum(Days_Failure_Count[305:334]);
	Monthly_Occur[12]=sum(Days_Failure_Count[335:365]);
		
	Inventory_Level_st = Inventory_Level_ed = vector()
	Inventory_Level_st[1]=Stock_level;
	Inventory_Level_ed[1]=Inventory_Level_st[1] - Days_Failure_Count[1] + Replenish_Level[1];
	for (i in 2:365) {
	Inventory_Level_st[i]=Inventory_Level_ed[i-1];
	Inventory_Level_ed[i]=Inventory_Level_st[i] - Days_Failure_Count[i] + Replenish_Level[i];
	}

	output$plot1 <- renderPlot({
		plot(Days_Failure_Count)
		})

	output$plot2 <- renderPlot({
		plot(Inventory_Level_ed)
		})	

}