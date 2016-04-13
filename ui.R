#--------------------------------------------------
# R UI Code for the Capstone Project Shiny App
#--------------------------------------------------

suppressWarnings(library(shiny))

shinyUI(fluidPage(theme = "bootstrap.min2.css",
 
    # Application title
    titlePanel("Coursera Data Science Capstone Project - The Next Word Prediction Application"),
    
    fluidRow(HTML("<strong>Author:Jackson Tan </strong>") ),
    fluidRow(HTML("<strong>Date:  13th April 2016</strong>") ),
    
    fluidRow(
      p()),
    br(),
   
    fluidRow(HTML("<strong>After entered your text, Kindly press the \"Predict\" button to predict the next word. </strong>") ),
    fluidRow( p("\n") ),
    
    # Sidebar layout
    sidebarLayout(
        
        sidebarPanel(
            textInput("inputString", "Please Enter Your Text Here:",value = ""),
            submitButton("Predict")
        ),
        
        mainPanel(
            h4("Predicted Next Word Will Be:"),
            verbatimTextOutput("prediction"),
            textOutput('text1'),
            textOutput('text2')
        )
    )
    
    
))