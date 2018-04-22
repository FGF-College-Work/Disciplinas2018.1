install.packages("rgl")
library(rgl)

#dummy data
set.seed(1)
x <- cumsum(rnorm(100))
y <- cumsum(rnorm(100))
z <- cumsum(rnorm(100))
cuts = cut(x = 1:length(x), breaks = 5)

# open 3d windows
open3d()

# resize window
par3d(windowRect = c(100, 100, 612, 612))

#plot points
plot3d(x, y, z,
	col=rainbow(5)[cuts],
	size = 4, type='s')

# add legend 
legend3d("topright", legend = paste('Type', c('A', 'B', 'C')), pch = 16, col = rainbow(5), cex=1, inset=c(0.02))

# capture snapshot
snapshot3d(filename = '3dplot.png', fmt = 'png')



