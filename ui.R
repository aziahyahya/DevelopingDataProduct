library(shiny)

ui<-fluidPage(
  
  headerPanel("Air Pollutant Index (API) 2013-2015: Banting, Selangor, MALAYSIA"),
  p("This apps provides basic information on the Air Pollution Index (API) readings of Banting from 2013-2015."),
  
  sidebarLayout(
    sidebarPanel(
      p("Select year by clicking on the 'Select Year' and 'Select Month' drop down buttons below to view the API readings"),
      selectInput(inputId ="year", label="Select Year", choices=c(2013,2014,2015), selected=2014),
      selectInput(inputId="month", label="Select Month", choices=c(1,2,3,4,5,6,7,8,9,10,11,12), selected=1)
    ),
    mainPanel(
      h3("Air Pollution Index (API) for Banting"),
      p("Banting is a principal town in the district of Kuala Langat, Selangor in Malaysia with a population of 48,240. 
        In the recent years, Banting has been highly affected by haze due to the seasonal forest fire in Indonesia. 
        In such situation, API readings for Banting has always been within top 3 in the country."),
      p("The analysis of API readings for Banting from 2013-2015 according to year and month selected is shown below."),
      plotOutput("plot1")
      )
    )
  
)