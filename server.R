# library(shiny)
# library(dplyr)
# setwd("C:\\Users\\Geovanni\\Desktop\\Prueba")
# Data<-read.csv("total.csv", skip=1,header=F)
# setwd("C:\\Users\\Geovanni\\Desktop\\Data Products\\Prueba")
# colnames(Data)<-c("Hour", "Node_ID","LMP","Ener_comp","Lo_comp","Cong_comp", "Date", "NADA")
# Data$Node_ID<-NULL
# Data$NADA<-NULL
 # Data$Hour<-factor(Data$Hour)
 # Data$Date<-as.Date(Data$Date)
function(input, output) {
    formulaText <- reactive({
    paste(input$variable, "~ Hour" )
      
        })
   
    output$Plot <- renderPlot({
    boxplot(as.formula(formulaText()),
            data = Data,
            outline = input$outliers,
            col="red",
            xlab="Hours",
            ylab="$/MWh")
  })
    
}

