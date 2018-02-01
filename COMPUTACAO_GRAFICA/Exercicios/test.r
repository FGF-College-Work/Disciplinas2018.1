install.packages("jpeg")

library(jpeg)

img<-readJPEG("fgf.jpeg")

if (exists("rasterImage")) {
	plot(1:2, type='n')

	rasterImage(img,1.0,1.0,2.0,2.0)

}

dim(img)

matrix(img,291,518)
