library(GraphAlignment)
library(igraph)
library(lsa)
setwd("/Users/BC/Documents/MATLAB/")


#temp = list.files(pattern="*.csv")
#myfiles = lapply(temp, read.delim)

lpa_3 <- as.vector(read.table("new_seeds_2_u_vector", header=F, sep="\t"))
lpa_2 <- as.vector(read.table("new_seeds_u_vector", header=F, sep="\t"))
lpa_1 <- as.vector(read.table("u_vector.txt", header=T, sep="\t"))

weights <- cbind(lpa_1,lpa_2,lpa_3)
y2=as.matrix(weights)
sim <- cosine(y2)
