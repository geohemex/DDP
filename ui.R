library(shiny)
fluidPage(
  titlePanel("Local Marginal Price for a day"),
  sidebarLayout(
  sidebarPanel(
     selectInput("variable", "Variable:",
                  c("Local Marginal Price" = "LMP",
                    "Energy Component" = "Ener_comp",
                    "Losses Component" = "Lo_comp",
                    "Congestion Component"= "Cong_comp")),
      
      checkboxInput("outliers", "Show outliers", FALSE)
    ),

    mainPanel(

      plotOutput("Plot")
     
    )
  )
)




