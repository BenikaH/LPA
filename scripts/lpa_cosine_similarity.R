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
# y3=as.matrix(lpa_2)
# 
# 
# g2 <- graph.edgelist(y2, directed=FALSE)
# g3 <- graph.edgelist(y3, directed=FALSE)
# 
# g_2 <- get.adjacency(g2)
# g_3 <- get.adjacency(g3)
# 
# g_2.1 <- graph.adjacency(g_2)
# g_3.1 <- graph.adjacency(g_3)
# 
# #Calculate the node similarity between two graphs
# g_sim <- graph.intersection(g_2.1,g_3.1, byname = "auto", keep.all.vertices = FALSE)
# 
# adj_sim <- get.adjacency(g_sim, type="both")
# 
# g<- graph.adjacency(adj_sim,mode = "undirected",weighted = T)
# 
# edge_ara <- get.data.frame(g,what = "edges")
# 
# edge_ara<- edge_ara[order(abs(edge_ara$weight),decreasing = T),]
# 
# write.csv(edge_ara, "comm2_node_sim.csv")

#calculate all possible edges,



