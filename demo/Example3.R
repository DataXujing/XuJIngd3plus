
library(shiny) 
library(XuJIngd3plus) 
ui <- shinyUI(fluidPage( 
  titlePanel("XuJIngd3plus!"), 
  sidebarLayout( sidebarPanel(), 
                 mainPanel(XJtreemapOutput("d3plot")) ) )) 

server <- shinyServer(function(input,output){ 
  newdata <- data.frame( value = c(100,70,40,15,5,1), 
                         name = c('alpha','beta','gamma','delta','epsilon','zeta'), 
                         group = c('分组1','分组2','分组2','分组2','分组1','分组1') ) 
  output$d3plot <- renderXJtreemap( XJtreemap(data = newdata) ) 
  
  }) 



shinyApp(ui = ui,server = server)