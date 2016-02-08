setwd('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/')

# import data 
list.files()
firstSNP <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/61822.txt')
secondSNP <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/18571.txt')
thirdSNP <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/6224.txt')
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
hist(firstSNP.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = 'MAF of 61,822 SNPs')
hist(secondSNP.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = 'MAF of 18,571 SNPs')
hist(thirdSNP.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = 'MAF of 6,224 SNPs')

hist(firstSNP.missingrate)
hist(secondSNP.missingrate)
hist(thirdSNP.missingrate)

hist(firstSNP.heterozygosity)
hist(secondSNP.heterozygosity)
hist(thirdSNP.heterozygosity)

######################
# call rate, MAF, & heterozygosity rate for each accession for accessions in each 
# cluster & sub-cluster
######################

###
# 6430 & 5283 SNPs for cluster 1 and 2, also accession list for all sub-clusters
##########













