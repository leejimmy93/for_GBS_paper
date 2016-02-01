setwd('/Users/ruijuanli/Desktop/revise/MAF_call_rate_heterozygosity/')

# import data 
list.files()
firstSNP <- read.delim('/Users/ruijuanli/Desktop/61822.txt')
secondSNP <- read.delim('/Users/ruijuanli/Desktop/18571.txt')
thirdSNP <- read.delim('/Users/ruijuanli/Desktop/6224.txt')
head(firstSNP)

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
