library(shiny) 

BMI_Factor<-function(Weight,Height) {Weight/(Height^2)}

diagnostic_f<-function(Weight,Height){
        BMI_value<-Weight/(Height^2)
        ifelse(BMI_value<18.5,"underweight",ifelse(BMI_value<25,"normal weight",ifelse(BMI_value<30,"overweight","obesity")))
}

shinyServer(
        function(input, output) {
                
                output$inputweightvalue <- renderPrint({input$Weight})
                output$inputheightvalue <- renderPrint({input$Height})
                output$estimation <- renderPrint({BMI_Factor(input$Weight,input$Height)})
                output$diagnostic <- renderPrint({diagnostic_f(input$Weight,input$Height)})
                output$myPlot <- renderPlot({
                        library(knitr) 
                        library(ggplot2)
                        suppressPackageStartupMessages(library(GGally))
                        library(datasets)
                        library(MASS)
                        # Data Sample
                        data(mtcars)
                        mtcars$cyl <- as.factor(mtcars$cyl)
                        mtcars$vs <- as.factor(mtcars$vs)
                        mtcars$am <- factor(mtcars$am)
                        mtcars$gear <- factor(mtcars$gear)
                        mtcars$carb <- factor(mtcars$carb)
                        mtcars$var <- 0
                        suppressMessages(attach(mtcars))
                        if(input$id1 == "1")
                                mtcars$var<-mtcars$am
                        if(input$id1 == "2")
                                mtcars$var<-mtcars$gear
                        if(input$id1 == "3")
                                mtcars$var<-mtcars$carb
                        if(input$id1 == "4")
                                mtcars$var<-mtcars$cyl
                        
                        boxplot(mtcars$mpg ~ mtcars$var, xlab="Transmission (0 = Automatic, 1 = Manual)", ylab="MPG",
                                main="Boxplot of MPG vs. Transmission")
                })
                output$dataset <- renderPrint({head(mtcars,as.integer(input$id1),order(mtcars$var))})
        } 
)