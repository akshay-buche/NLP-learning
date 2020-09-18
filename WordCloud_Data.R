#Installing Packages
install.packages ('tm')
#install.packages (“wordcloud”)
#install.packages (“RColorBrewer”)
#Loading Packages
library(tm)
#library(wordcloud)
#library(RColorBrewer)
# change this file location to suit your machine
file_loc <- "~/Documents/NLP-learning/artists_corpus_clean.csv"
print(file_loc)
x <- read.csv(file_loc, header = TRUE)
#creating a DTM from the CSV of the cleaned data
corp <- Corpus(DataframeSource(x))
dtm <- DocumentTermMatrix(corp)

matrix <- as.matrix(dtm[1,]) 
matrix <- as.matrix(matrix[order(matrix, decreasing=TRUE),])

print(words)
install.packages("wordcloud")
library(wordcloud)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud2")
library(wordcloud2)
wordcloud(colnames(matrix), matrix, min.freq =2, scale=c(5, .2), random.order = FALSE, random.color = TRUE, colors=brewer.pal(8, "Dark2"))
