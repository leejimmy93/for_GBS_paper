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
# import data
SNP_1st_cluster <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/6224_302.txt')
SNP_2nd_cluster <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/6224_64.txt')
two_hundred_and_three_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/203_6430.txt')
seventy_seven_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/77_6430.txt')
ten_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/10_5283.txt')
forty_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/40_5283.txt')
six_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/6_5283.txt')

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
hist(SNP_1st_cluster.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = 'MAF of 6224_302 SNPs')
hist(SNP_2nd_cluster.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = 'MAF of 6224_64 SNPs')
hist(two_hundred_and_three_accessions.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = '6430_203')
hist(seventy_seven_accessions.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = '6430_77')
hist(ten_accessions.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = '10_5283')
hist(forty_accessions.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = '40_5283')
hist(six_accessions.MAF, xlab = 'MAF', ylab = 'Number of accessions', main = '6_5283')

hist(SNP_1st_cluster.missingrate)
hist(SNP_2nd_cluster.missingrate)
hist(two_hundred_and_three_accessions.missingrate)
hist(seventy_seven_accessions.missingrate)
hist(ten_accessions.missingrate)
hist(forty_accessions.missingrate)
hist(six_accessions.missingrate)

hist(SNP_1st_cluster.heterozygosity)
hist(SNP_2nd_cluster.heterozygosity)
hist(two_hundred_and_three_accessions.heterozygosity)
hist(seventy_seven_accessions.heterozygosity)
hist(ten_accessions.heterozygosity)
hist(forty_accessions.heterozygosity)
hist(six_accessions.heterozygosity)
















