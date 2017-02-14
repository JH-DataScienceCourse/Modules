Word Prediction
========================================================
author: Delermando Branquinho Filho
date: August 30, 2016
autosize: true
font-family: 'Helvetica'

<span class="emphasized">Data Science Capstone</span>

Text prediction for auto-Completion
========================================================

Coursera Capstone Project Background

The purpose of the project is to build a word prediction algorithm and a shiny app that accepts an n-gram inputs and predicts the next word.

Auto-completion is a common function on mobile devices. As a user types, an auto-completion function presents that user with possible completions to the current word being typed or probable words that could follow the current word or phrase after it is typed. The package "wordprediction" provides the latter function.

In order to build a package that can provide word-prediction, a predictive model is needed.

Data Structure & Cleaning: The "tm" Package
========================================================

This package used the data stuctures created for the tm package described in Feinerer, Hornik, and Meyer (2008).

Word Prediction Algorithm Design

Dataset

* 10000 lines of data from the twitter, blogs and news datasets each were taken
* Combined data was cleaned up by converting to lower case and removing special chars, punctuations, profanity, etc.
* The data was then tokenized into n-grams, and aggregated uni-, bi- and tri-gram frequency matrices were produced


Data Processing: n-Grams
========================================================

The application interface prompts user for an input phrase

Predicted word gets presented to user upon submitting the input phrase

The trained model file was placed in data folder of the application during the deployment to shinyapps server.

Application can be found follow the link below.<BR>
Just write a text or frase into "Text input" field and push Predict Button, or wait, for the magic transformation.

https://delermando.shinyapps.io/FInalProjectCapstone/

