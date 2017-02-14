---
title: "Statistical Inference"
subtitle: "Quiz1"
author: "Delermando Branquinho Filho"
date: "15 de junho de 2016"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Question 1
Consider influenza epidemics for two parent heterosexual families. Suppose that the probability is 17% that at least one of the parents has contracted the disease. The probability that the father has contracted influenza is 12% while the probability that both the mother and father have contracted the disease is 6%. What is the probability that the mother has contracted influenza?

(Hints look at lecture 2 around 5:30 and chapter 4 problem 4).

5%
11% <-
17%
6%

### Answer
A=Mother, B = Father, P(A???B)=17%, P(B)=12%, P(A???B)=6%. 
Since we know P(A???B)=P(A)+P(B)???P(A???B) we get 17%=P(A)+12%???6%.

## Question 2
A random variable, X is uniform, a box from 0 to 1 of height 1. (So that its density is f(x)=1 for 0???x???1.) What is its 75th percentile?

(Hints, look at lecture 2 around 21:30 and Chapter 5 Problem 5. Also, look up the help function for the qunif command in R.)

0.10
0.75
0.25
0.50

### Answer
This density looks like a box. The point so that the area below it is 0.75 is 0.75. Alternatively

´´´{r}
qunif(0.75)
´´´
