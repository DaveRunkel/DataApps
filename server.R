W<-2 #cm
hW<-304 #W/(m^2*cm)
k<-.032 #W/(m*cm)
T_inf<-20 #c
Q_dot<-1.6 #W
A<<- function(L) Q_dot*(1/(k*W)+1/(L*hW))+T_inf
T_1<<-A

library(shiny)
library(UsingR)

shinyServer(
  function(input, output) {
        output$inputValue <- renderPrint({input$L})
        output$temperature <- renderPrint({A(input$L)})
        
  })
        

