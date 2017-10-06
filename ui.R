#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel(h3("Peer-graded Assignment: Course Project: Shiny Application and Reproducible Pitch ")),
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
       selectInput("var","1.Select the variable of the iris dataset",choices = c("Sepal.Length"=1,"Sepal.Width"=2, "Petal.Length"=3,"Petal.Width"=4)),
       br(),
       sliderInput("bins","2.Select the number of Bins for histogram",min=5,max=100,value=15),
       br(),
       radioButtons("color","3.Select the color of histogram",choices=c("Green","Red","Yellow","Blue"),selected = "Green")
                 ),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("myhist"))
         
               
                )

      )
)
