library(shiny) 
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Fuel Consumption Analysis"),
                sidebarPanel(
                        h4(""),
                        radioButtons(inputId = "id1", label = "Variable chosen:", selected = "1",
                                           choices = c("A/M" = "1", "Gear" = "2",
                                           "Carb" = "3", "Cyl" = "4"))
                ), 
                mainPanel(
                        p('As an initial test, dependence of mpg on wt is analysed. box-scat A: Boxplot, B: Scatterplot of mpg against wt.'),
                        p('For the purpose of this analysis we use mtcars dataset which is a dataset extracted from the 1974 Motor Trend US magazine, and comprises fuel autonomy and 10 more aspects of automobile design and performance for 32 automobiles (1973-74 models). The table below shows a brief description of the variables in the dataset:'),
                        verbatimTextOutput("dataset"),
                        
                        plotOutput('myPlot'),
                        p('According to the boxplot, automatic cars have lower MPG (and possibly lower variance in the data). Importantly, the relationships appear linear and no outliers which could affect correlation values are identified. The only aspect which is slightly problematic is the limited dataset size (n=32). It is noted that apparently most cars with automatic transmission also are heavier which possibly confounds the observation, this would be subject to further research.')
                )
                
        )   
)