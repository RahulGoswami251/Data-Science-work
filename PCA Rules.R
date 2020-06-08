


universities<-read.csv("/Volumes/Data/Course Content/DS content/PCA/PCA.csv")

Universities1<-scale(Universities[,2:7])
pca<-princomp(Universities1, cor = TRUE,scores = TRUE, covmat = NULL)

summary(pca)
pca$scores
new_data<-pca$scores[,1:2]
#pca$loadings

plot(pca$scores[,1:2],col="Blue",cex = 0.2)
text(pca$scores[,1:2], labels=c(1:25), cex= .7)
