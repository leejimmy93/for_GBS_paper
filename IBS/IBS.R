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
setwd("~/Desktop/GBS_manuscript/revise/IBS/")
myY=read.table("fake_genotype.txt", head=TRUE)
myG=read.table("375_6224_clean_ID.hmp.txt", head=F)
myGAPIT <- GAPIT(Y=myY, G=myG, Model.selection=TRUE, PCA.total=0, kinship.algorithm=c("EMMA"))

# closer look at the kinship matrix 
# import kinship matrix & get rownames 
kinship.EMMA <- read.csv("GAPIT.Kin.EMMA.csv", header = F)
rownames(kinship.EMMA) <- kinship.EMMA[1:375,1]
ncol(kinship.EMMA)
kinship.EMMA <- kinship.EMMA[, 2:376]
ncol(kinship.EMMA)
kinship.EMMA[1:10, 1:10]
colnames(kinship.EMMA) <- rownames(kinship.EMMA)
kinship.EMMA[1:10, 1:10]

# How many pairs are above 0.95 kinship relationship? they are probably related.





# which couple of lines have similarity above 0.98? comment regarding identification of redudant 
# accessions of germplasm collection... refer to Romay et al. 2013 













