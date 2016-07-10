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
SNP_1st_cluster <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/6224_302.txt')
SNP_2nd_cluster <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/64_6224.txt')
two_hundred_and_three_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/203_6430.txt')
seventy_seven_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/77_6430.txt')
ten_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/10_5283.txt')
forty_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/40_5283.txt')
six_accessions <- read.delim('/Users/ruijuanli/Desktop/GBS_manuscript/revise/MAF_call_rate_heterozygosity/6_5283.txt')

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
dens(thirdSNP.MAF, col="black", xlab="Minor allele frequency", ylab="density", lwd=2)
dens(SNP_1st_cluster.MAF, add = TRUE, col="green", lwd=2)
dens(SNP_2nd_cluster.MAF, add = TRUE, col="red", lwd=2)

# dens(two_hundred_and_three_accessions.MAF, col="blue")
# dens(seventy_seven_accessions.MAF, add = TRUE, col="pink")
# dens(ten_accessions.MAF, add = TRUE, col="orange2")
# dens(forty_accessions.MAF, add = TRUE, col="yellow2")
# dens(six_accessions.MAF,col="purple4", add = TRUE)

dens(thirdSNP.missingrate, ylim=c(0,25), col="black", xlab="missing rate", ylab="density", lwd=2)
dens(SNP_1st_cluster.missingrate, add = TRUE, col="green", lwd=2)
dens(SNP_2nd_cluster.missingrate,  col="red", add = T, lwd=2)
# hist(two_hundred_and_three_accessions.missingrate)
# hist(seventy_seven_accessions.missingrate)
# hist(ten_accessions.missingrate)
# hist(forty_accessions.missingrate)
# hist(six_accessions.missingrate)

dens(thirdSNP.heterozygosity, col="black", xlab="heterozygosity", ylab="density", lwd=2, ylim=c(0,90))
dens(SNP_1st_cluster.heterozygosity, add = TRUE, col="green", lwd=2)  
dens(SNP_2nd_cluster.heterozygosity, col="red", add = T, lwd=2)
# hist(two_hundred_and_three_accessions.heterozygosity)
# hist(seventy_seven_accessions.heterozygosity)
# hist(ten_accessions.heterozygosity)
# hist(forty_accessions.heterozygosity)
# hist(six_accessions.heterozygosity)

##### missing data at taxa level
mising_taxa_6224 <- read.delim("~/Desktop/GBS_manuscript/revise/6224_taxa.txt")
par(mfrow=c(1,2))
dens(thirdSNP.missingrate, col="red", lwd=2, xlab="missing rate at locus level", ylab=NA)













