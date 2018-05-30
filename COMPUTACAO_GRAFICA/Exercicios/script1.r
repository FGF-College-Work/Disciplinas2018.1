require(lattice)
g <- expand.grid(x = -10:10, y = -10:10, gr = 1:2)
g$z <- g$x^2 - g$y^2
wireframe(z ~ x * y, data = g, groups = gr,
		scales = list(arrows = FALSE),
		drape = TRUE, colorkey = TRUE,
		screen = list(z = 30, x = -60))
