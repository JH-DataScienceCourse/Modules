library(shiny)

shinyUI(
    fixedPage(
        column(
            width = 10,
            offset = 1,
            titlePanel("APP - Word Prediction"),
            wellPanel("Auto-completion"),
            fixedRow(
                sidebarPanel(
                    span(
                        textInput(
                            "phrase",
                            "Text Input: ",
                            value = ""
                        ),
                        actionButton("predictButton", "Predict")
                    )
                ),
                mainPanel(
                    strong("Input predicted:"),
                    textOutput("phrase"),
                    strong("Prediction:"),
                    textOutput("word")
                )
            )
        )
    )
)
