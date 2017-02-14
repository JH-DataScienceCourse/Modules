Word Prediction
========================================================
author: Delermando Branquinho Filho
date: August 30, 2016
autosize: true
"Data Science Capstone"

PText prediction for auto-Completion

========================================================

Coursera Capstone Project Background

The purpose of the project is to build a word prediction algorithm and a shiny app that accepts an n-gram inputs and predicts the next word.

Auto-completion is a common function on mobile devices. As a user types, an auto-completion function presents that user with possible completions to the current word being typed or probable words that could follow the current word or phrase after it is typed. The package "wordprediction" provides the latter function.

In order to build a package that can provide word-prediction, a predictive model is needed.

Data Structure & Cleaning: The "tm" Package
========================================================

This package used the data stuctures created for the tm package described in Feinerer, Hornik, and Meyer (2008).  In these structures, text document collections are organized into corpora, the basic objects to be manipulated by the word-prediction function.  Accordingly, the HC Corpora data file were loaded as tm corpora.

Data cleaning involves transforming the raw text in the corpus into a format more suitable for automated manipulation.  For this package, the texts were converted to lower case, stripped of whitespace, and common stopwords (see Feinerer et al., 2008, pp. 25-26) were removed.  Finally, a term-document matrix (TDM) was created, which is a matrix of words or phrases and their frequencies in a corpus.

Data Processing: n-Grams and Katz's Back-Off Model
========================================================

According to Wikipedia (N-gram, n.d.), "an n-gram is a contiguous sequence of n items from a given sequence of text or speech."  This package takes a key word or phrase, matches that key to the most frequent n-1 term found in a TDM of n-word terms, and returns the nth word of that item.

Of course, not all possible words or phrases exist in the corpus from which the TDM was derived.  For this reason, a simplified Katz's back-off model is used, which backs off to smaller n-grams when a key is not found in the larger n-gram.  The maximum n-gram handled is a trigram.  The word returned is the match found in the largest n-gram where the key is found.  When the key is not found in the unigram, the word "will" is returned.

References
========================================================

Christensen, H. (n.d.). *HC Corpora*. Retrieved from [http://www.corpora.heliohost.org](http://www.corpora.heliohost.org)

Feinerer, I., Hornik, K., & Meyer, D. (2008). *Text mining infrastructure in R. Journal of Statistical Software, 25*(5), 1?54. [http://doi.org/citeulike-article-id:2842334](http://doi.org/citeulike-article-id:2842334)

Leek, J., Peng, R., Caffo, B., & Johns Hopkins University (n.d.). *Data Science Capstone*, Coursera. Retrieved from [https://www.coursera.org/learn/data-science-project/](https://www.coursera.org/learn/data-science-project/)

N-gram. (n.d.). In *Wikipedia*. Retrieved April 17, 2016, from [https://en.wikipedia.org/wiki/N-gram](https://en.wikipedia.org/wiki/N-gram)
