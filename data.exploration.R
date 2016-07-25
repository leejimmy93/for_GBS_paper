setwd("/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration//")

# load lib for figure
library(rethinking)

# import data 
list.files()
firstSNP <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration//raw_SNP_hapmap_data/61822.txt')
secondSNP <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration//raw_SNP_hapmap_data/18571.txt')
thirdSNP <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration//raw_SNP_hapmap_data/6224.txt')
mising_taxa_6224 <- read.delim("/Users/ruijuanli/Desktop/GBS_manuscript/revise/6224_taxa.txt")
head(firstSNP)
head(thirdSNP)

###################
# call rate, MAF, & heterozygosity rate for each accession at each step of SNP filtering
###################
# MAF
firstSNP.MAF <- firstSNP$Minor.Allele.Frequency
secondSNP.MAF<- secondSNP$Minor.Allele.Frequency
thirdSNP.MAF<- thirdSNP$Minor.Allele.Frequency
summary(firstSNP.MAF)
summary(secondSNP.MAF)
summary(thirdSNP.MAF)

# missing rate
firstSNP.missingrate <- firstSNP$Proportion.Missing
secondSNP.missingrate <- secondSNP$Proportion.Missing
thirdSNP.missingrate <- thirdSNP$Proportion.Missing

# heterozygosity
firstSNP.heterozygosity <- firstSNP$Proportion.Heterozygous
secondSNP.heterozygosity <- secondSNP$Proportion.Heterozygous
thirdSNP.heterozygosity <- thirdSNP$Proportion.Heterozygous

# making plot
par(mfrow=c(2,2))
dens(firstSNP.missingrate, ylim=c(0,20), col="black", xlab="missing rate at locus level", lwd=2, add = F)
dens(secondSNP.missingrate, xlim=c(0, 1), add = TRUE, col="blue", lwd=2)
dens(thirdSNP.missingrate, add = TRUE, col="red", lwd=2)

dens(secondSNP.MAF, col="blue", xlab="Minor allele frequency", lwd=2, ylab=NA)
dens(firstSNP.MAF, add = TRUE, col="black", lwd=2) 
dens(thirdSNP.MAF, add = TRUE, col="red", lwd=2)


dens(firstSNP.heterozygosity, col="black", xlab="heterozygosity", add = F, lwd=2)
dens(secondSNP.heterozygosity, add=TRUE, col="blue", lwd=2)
dens(thirdSNP.heterozygosity, add = TRUE, col="red", lwd=2)

dens(mising_taxa_6224$Proportion.Missing, col="red", lwd=2, add = F, xlab="missing rate at taxa level", ylab=NA)
######################
# call rate, MAF, & heterozygosity rate for each accession for accessions in each 
# cluster & sub-cluster
######################
# import data
SNP_1st_cluster <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/6224_302.txt')
SNP_2nd_cluster <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/64_6224.txt')
two_hundred_and_three_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration//203_6430.txt')
seventy_seven_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/77_6430.txt')
ten_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/10_5283.txt')
forty_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/40_5283.txt')
six_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/data_exploration/6_5283.txt')

###################
# call rate, MAF, & heterozygosity rate 
###################
# MAF
SNP_1st_cluster.MAF <- SNP_1st_cluster$Minor.Allele.Frequency
SNP_2nd_cluster.MAF <- SNP_2nd_cluster$Minor.Allele.Frequency
two_hundred_and_three_accessions.MAF <- two_hundred_and_three_accessions$Minor.Allele.Frequency
seventy_seven_accessions.MAF<- seventy_seven_accessions$Minor.Allele.Frequency
ten_accessions.MAF<- ten_accessions$Minor.Allele.Frequency
forty_accessions.MAF <- forty_accessions$Minor.Allele.Frequency
six_accessions.MAF <- six_accessions$Minor.Allele.Frequency

summary(SNP_1st_cluster.MAF)
summary(SNP_2nd_cluster.MAF)
summary(two_hundred_and_three_accessions.MAF)
summary(seventy_seven_accessions.MAF)
summary(ten_accessions.MAF)
summary(forty_accessions.MAF)
summary(six_accessions.MAF)

# missing rate
SNP_1st_cluster.missingrate <- SNP_1st_cluster$Proportion.Missing
SNP_2nd_cluster.missingrate <- SNP_2nd_cluster$Proportion.Missing
two_hundred_and_three_accessions.missingrate <- two_hundred_and_three_accessions$Proportion.Missing
seventy_seven_accessions.missingrate<- seventy_seven_accessions$Proportion.Missing
ten_accessions.missingrate<- ten_accessions$Proportion.Missing
forty_accessions.missingrate <- forty_accessions$Proportion.Missing
six_accessions.missingrate <- six_accessions$Proportion.Missing

# heterozygosity
SNP_1st_cluster.heterozygosity <- SNP_1st_cluster$Proportion.Heterozygous
SNP_2nd_cluster.heterozygosity <- SNP_2nd_cluster$Proportion.Heterozygous
two_hundred_and_three_accessions.heterozygosity <- two_hundred_and_three_accessions$Proportion.Heterozygous
seventy_seven_accessions.heterozygosity<- seventy_seven_accessions$Proportion.Heterozygous
ten_accessions.heterozygosity<- ten_accessions$Proportion.Heterozygous
forty_accessions.heterozygosity <- forty_accessions$Proportion.Heterozygous
six_accessions.heterozygosity <- six_accessions$Proportion.Heterozygous


# making plot
par(mfrow=c(1,1))
plot(density(thirdSNP.MAF), col="black", xlab="Minor allele frequency", ylab="density", lwd=2, main="", xlim=c(0,0.5), ylim=c(0,6))
par(new=T)
plot(density(SNP_1st_cluster.MAF), add = TRUE, col="green", lwd=2, main = "", xlab="", ylab="", xlim=c(0,0.5), ylim=c(0,6))
par(new=T)
plot(density(SNP_2nd_cluster.MAF), add = TRUE, col="red", lwd=2, main = "", xlab="", ylab="", xlim=c(0,0.5), ylim=c(0,6))

# dens(two_hundred_and_three_accessions.MAF, col="blue")
# dens(seventy_seven_accessions.MAF, add = TRUE, col="pink")
# dens(ten_accessions.MAF, add = TRUE, col="orange2")
# dens(forty_accessions.MAF, add = TRUE, col="yellow2")
# dens(six_accessions.MAF,col="purple4", add = TRUE)

# dens(thirdSNP.missingrate, ylim=c(0,25), xlim=c(0, 2), col="black", xlab="missing rate", ylab="density", lwd=2)
# dens(SNP_1st_cluster.missingrate, add = TRUE, col="green", lwd=2)
# dens(SNP_2nd_cluster.missingrate,  col="red", add = T, lwd=2)

# How to overplay line plot? 
plot(density(thirdSNP.missingrate), ylim=c(0,20), xlim=c(0,0.15), col="black", xlab="missing rate", ylab="density", lwd=2, main="")
par(new=T)
plot(density(SNP_1st_cluster.missingrate), add = TRUE, col="green", lwd=2,  ylim=c(0,20), xlim=c(0,0.15), xlab="", ylab="", main="")
par(new=T)
plot(density(SNP_2nd_cluster.missingrate), col="red", add = T, lwd=2,  ylim=c(0,20), xlim=c(0,0.15), xlab="", ylab="", main="")

# hist(two_hundred_and_three_accessions.missingrate)
# hist(seventy_seven_accessions.missingrate)
# hist(ten_accessions.missingrate)
# hist(forty_accessions.missingrate)
# hist(six_accessions.missingrate)

plot(density(thirdSNP.heterozygosity), col="black", xlab="heterozygosity", ylab="density", lwd=2, ylim=c(0,50), xlim=c(0,0.2), main = "")
par(new=T)
plot(density(SNP_1st_cluster.heterozygosity), add = TRUE, col="green", lwd=2, ylim=c(0,50), xlim=c(0,0.2), main = "", xlab="", ylab="")  
par(new=T)
plot(density(SNP_2nd_cluster.heterozygosity), col="red", add = T, lwd=2, xlab="", ylab="",ylim=c(0,50), xlim=c(0,0.2), main="")
# hist(two_hundred_and_three_accessions.heterozygosity)
# hist(seventy_seven_accessions.heterozygosity)
# hist(ten_accessions.heterozygosity)
# hist(forty_accessions.heterozygosity)
# hist(six_accessions.heterozygosity)

##### missing data at taxa level
mising_taxa_6224 <- read.delim("~/Desktop/GBS_manuscript/revise/6224_taxa.txt")
par(mfrow=c(1,2))
dens(thirdSNP.missingrate, col="red", lwd=2, xlab="missing rate at locus level", ylab=NA)

# these SNPs were generated from Fst.R, which showed Fst value greater than 0.9. The high Fst value indiate these SNPs 
# are differentially fixed among all genotypes, although the reviewer asked me to check how different loci's Fst look like 
# between the 2 populations I identified, I found it is somewhat hard for me to generate now. So I decide to use this 
# data to resply the review's question. So Believe or don't believe the result!!! 

## 1) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_288624596"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_288624596"]
# 2 55535625 

## 2) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_363837409"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_363837409"]
# 5 29725879 

## 3) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_391376633"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_391376633"]
# 5 57265103 

## 4) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_391376844"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_391376844"]
# 5 57265314

## 5) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_192511683"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_192511683"]
# 8 86812868 

## 6) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1408491264"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1408491264"] 
# 9 94394274 

## 7) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1408491302"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1408491302"]
# 9 94394312 

## 8) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1408644348"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1408644348"]
# 9 94547358 

## 9) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1408644903"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1408644903"]
# 9 94547913 

## 10) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1408654014"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1408654014"]
# 9 94557024 

## 11) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_1164564653"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_1164564653"]
# 10 68088169 

## 12) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_72918909"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_72918909"]
# 11 72918909  

## 13) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_577789580"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_577789580"]
# 12 36862750 

## 14) 
thirdSNP$Chromosome[thirdSNP$Site.Name=="S1_634876429"]
thirdSNP$Physical.Position[thirdSNP$Site.Name=="S1_634876429"]
# 12 93949599 







