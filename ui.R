shinyUI(pageWithSidebar(
  headerPanel("1D Convection and Conduction through a ceramic fiber blanket"),
  sidebarPanel(
    numericInput('L', 'Enter length of wall in centimeters', 0, min=1),
    submitButton('Engage!'),
    wellPanel(
      helpText(   a("Click here for thermal conductivity reference chart",
                    href="http://www.electronics-cooling.com/2002/05/the-thermal-conductivity-of-thermal-insulators/")))
  ),
  mainPanel(
    h2('Assumes constant thermodynamics properties and steady state with no heat generation'),
    h3('Thermodynamics!'),
    h4('Wall thickness'),
    verbatimTextOutput("inputValue"),
    h4('Outer wall temperature in C'),
    verbatimTextOutput("temperature"),
    h5('ASSumptions'),
    h5('Q_dot=1.6W, h=152 w/(m^2C), k=.032 w/mc,Ambient temperature of 20c and wall width of 2 cm')
    )
))