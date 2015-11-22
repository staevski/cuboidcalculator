#This application allow the user to enter the length, width, and height 
#and calculate the Volume and the Surface Area of a Cuboid.
#It uses Scatterplot3d to plot a point with the Length, Width and the Height as coordinates.
#Three text boxes are created 
#to enter length, width, height and calculations for Volume and Surface Area
#are done in the server.R 

library(shiny)
library(scatterplot3d)

shinyUI(pageWithSidebar(
  headerPanel("To Calculate Volume and Surface Area of Cuboid"),
  sidebarPanel(
    
    textInput(inputId='length','Enter Length', value='0'),
    textInput(inputId='width','Enter Width', value='0'),
    textInput(inputId='height','Enter Height', value='0')
    
  ),
  mainPanel(h2('Calculating Volume and Surface Area'),
            h4('Volume is'),
            verbatimTextOutput("volume"),
            h4('Surface Area'),
            verbatimTextOutput("surface"),
            h4('Example with Scatterplot3d  - Plot a point with the Length, Width and Height as coordinates'),
                       plotOutput('CubePlot')
  )))
