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
SNP_1st_cluster <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/302_6430.txt')
SNP_2nd_cluster <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/64_5283.txt')
two_hundred_and_three_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/203_accessions')
seventy_seven_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/77_accessions')
ten_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/10_accessions')
forty_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/40_accessions')
six_accessions <- read.delim('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/raw_SNP_hapmap_data/6_accessions')

# clean up colname
colnames(SNP_1st_cluster) <- sub(".C6G7TANXX.1.1","",colnames(SNP_1st_cluster),fixed = TRUE)
colnames(SNP_1st_cluster) <- sub(".C6G7TANXX.2.1","",colnames(SNP_1st_cluster),fixed = TRUE)
colnames(SNP_1st_cluster) <- sub(".C6G7TANXX.3.1","",colnames(SNP_1st_cluster),fixed = TRUE)
colnames(SNP_1st_cluster) <- sub(".C6G7TANXX.4.1","",colnames(SNP_1st_cluster),fixed = TRUE)

colnames(SNP_1st_cluster)
seventy_seven_accessions_SNP <- seventy_seven_accessions %in% colnames(SNP_1st_cluster)














