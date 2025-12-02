library(ggplot2)
library(readr)
library(tibble)
library(stringr)

setwd("/Users/ardicsahin/Desktop/Bioinformatics")

posgroup <- read_delim("/Users/ardicsahin/Desktop/Positive.txt", delim = "\t")
neggroup <- read_delim("/Users/ardicsahin/Desktop/Negative.txt", delim = "\t")

posgroup <- posgroup[, -2]
neggroup <- neggroup[, -2]

posgroup$Metabolite_name <- str_replace_all(posgroup$Metabolite_name, fixed("^"), "′")
neggroup$Metabolite_name <- str_replace_all(neggroup$Metabolite_name, fixed("^"), "′")

posgroup <- column_to_rownames(posgroup, var = colnames(posgroup)[1])
neggroup <- column_to_rownames(neggroup, var = colnames(neggroup)[1])

rownames(posgroup)[1] <- 'LABEL'
rownames(neggroup)[1] <- 'LABEL'

write.csv(posgroup, file = "posgroup.csv", row.names= TRUE)
write.csv(posgroup, file = "neggroup.csv", row.names = TRUE)










