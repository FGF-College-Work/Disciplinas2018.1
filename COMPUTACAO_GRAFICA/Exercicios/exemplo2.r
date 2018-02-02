install.packages("d3heatmap")

library(d3heatmap)
url <- "http://datasets.flowingdata.com/ppg2008.csv"
nba_players <- read.csv(url, row.names = 1)
d3heatmap(nba_players, scale = "column")