# source("http://www.bioconductor.org/biocLite.R")
# biocLite("multtest")
# install.packages("gplots")
# install.packages("LDheatmap")
# install.packages("genetics")
# install.packages("scatterplot3d")

# get all required packages 
library(multtest)
library(gplots)
library(LDheatmap)
library(genetics)
library(compiler) #this library is already installed in R
library("scatterplot3d")
source("http://zzlab.net/GAPIT/gapit_functions.txt")
source("http://zzlab.net/GAPIT/emma.txt")

# set wd & kinship analysis 
setwd("~/Desktop/GBS_manuscript/revise/data_exploration/IBS/")
myY=read.table("fake_genotype.txt", head=TRUE)
myG=read.table("375_6224_clean_ID.hmp.txt", head=F)
myGAPIT <- GAPIT(Y=myY, G=myG, Model.selection=TRUE, PCA.total=0, kinship.algorithm=c("EMMA"))

# closer look at the kinship matrix 
# import kinship matrix & get rownames 
kinship.EMMA <- read.csv("GAPIT.Kin.EMMA.csv", header = F)
rownames(kinship.EMMA) <- kinship.EMMA[1:375,1]
dim(kinship.EMMA)
kinship.EMMA <- kinship.EMMA[, 2:376]
dim(kinship.EMMA)
kinship.EMMA[1:10, 1:10]
colnames(kinship.EMMA) <- rownames(kinship.EMMA)
kinship.EMMA[1:10, 1:10]
write.csv(kinship.EMMA, file = "kinship.EMMA.csv")

# How many pairs are above 0.95 kinship relationship? who are they? they are probably closely related.
for (i in 1:nrow(kinship.EMMA)){
    for (j in 1:ncol(kinship.EMMA)){
      if (kinship.EMMA[i,j] >= 0.91 && kinship.EMMA[i,j] != 1){
        output <- c(rownames(kinship.EMMA)[i], colnames(kinship.EMMA)[j])
        print(output)
      }
    }
}

kinship.EMMA["PI630019","PI529740"] # 0.92 

# which couple of lines have similarity above 0.98? comment regarding identification of redudant 
# accessions of germplasm collection... refer to Romay et al. 2013, none!!! 














