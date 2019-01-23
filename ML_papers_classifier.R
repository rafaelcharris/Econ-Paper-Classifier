#load packages
library(tidyverse)
library(tidytext) #text mining
library(mlr)
library(kableExtra)
library(pdftools)
library(tm) #Text mining
library(stringr)

#Convert pdf files into text files
#vector of all the names of the papers

paper_names <- unlist(list.files("D:/Google Drive/Proyectos/Urosario/Artículos", recursive = TRUE), use.names = FALSE)
#function to read the pdfs
read <- readPDF(control = list(text = "-layout"))

#Read pdfs
setwd("D:/Google Drive/Proyectos/Urosario/Artículos")
document <- NULL

for (name in 1:length(paper_names)){
  document[name] <- Corpus(URISource(paste(".", as.String(paper_names[name]), sep = "/")), readerControl = list(reader = read))
}

doc <- content(document[[1]])
head(doc)


