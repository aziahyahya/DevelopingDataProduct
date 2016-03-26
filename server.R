library(shiny)
library(lubridate)
library(ggplot2)

server<-function(input,output){
  banting<-read.csv("API_Banting.csv")
  
  output$plot1<-renderPlot(
    {
      
      filtered.data<-banting[(year(banting$Date)==input$year & month(banting$Date)==input$month),]
      ggplot(data=filtered.data, aes(x=filtered.data$Hour, y=filtered.data$API))+geom_smooth(color="magenta") + labs(x="Hour", y="API")
    }
  )
  
}