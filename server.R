library(shiny)
library(scatterplot3d)


shinyServer(
  function(input,output)
  {
    output$volume<-renderText({as.numeric((input$length))*as.numeric((input$width))*as.numeric((input$height)) })
    output$surface<-renderText({as.numeric(input$length)*as.numeric(input$width)+
        as.numeric(input$height)*as.numeric(input$width)+
        as.numeric(input$length)*as.numeric(input$height)})
       output$CubePlot<-renderPlot({scatterplot3d(as.numeric((input$length)),as.numeric((input$width)),as.numeric((input$height)), xlab="Length", ylab="Width", zlab="Height", pch=16, highlight.3d=TRUE, type="h")})
    
  })