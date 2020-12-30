# Grafi za bilanco stanja 
library(broman)




colors <- c( brocolors("crayons")["Blizzard Blue"], "Blue", brocolors("crayons")["Periwinkle"],  brocolors("crayons")["Red Violet"],  brocolors("crayons")["Orchid"],brocolors("crayons")["Carnation Pink"], brocolors("crayons")["Piggy Pink"])

slices <- c(bilanca_adidas[3, 4], bilanca_adidas[4,4], bilanca_adidas[5,4], bilanca_adidas[7,4], bilanca_adidas[8, 4], bilanca_adidas[9, 4], bilanca_adidas[10,4])
percentlabels <- round((100 *slices/ bilanca_adidas[11,4]), 1)
pielabels<- paste(percentlabels, "%", sep="")
pie(slices, main="2016",labels = pielabels, col = colors, radius = 1)
legend(-2.5,1.1, lbls, fill = colors, ncol = 1, cex = 0.70)

slices <- c(bilanca_adidas[3, 3], bilanca_adidas[4,3], bilanca_adidas[5,3], bilanca_adidas[7,3], bilanca_adidas[8, 3], bilanca_adidas[9, 3], bilanca_adidas[10,3])
percentlabels <- round(100 *(slices/ bilanca_adidas[11,3]), 1)
pielabels<- paste(percentlabels, "%", sep="")
pie(slices, main="2017", labels = pielabels,col = colors, radius = 1)
legend(-2.5,1.1, lbls, fill = colors, ncol = 1, cex = 0.70)
lbls <- c("Intangible fixed assets", "Tangible fixed assets", "Other fixed assets", "Stock", "Debtors", "Other current assets", "Cash&cash equivalent")



slices <- c(bilanca_adidas[3, 2], bilanca_adidas[4,2], bilanca_adidas[5,2], bilanca_adidas[7,2], bilanca_adidas[8, 2], bilanca_adidas[9, 2], bilanca_adidas[10,2])
percentlabels <- round(100 *(slices/ bilanca_adidas[11,2]), 1)
pielabels<- paste(percentlabels, "%", sep="")
pie(slices, main="2018",labels = pielabels ,col = colors, radius = 1, cex = 1.5, clockwise= TRUE)
legend(-2.5,1.1, lbls, fill = colors, ncol = 1, cex = 1.2, text.font = 4, text.width = 1, bty = "n")

slices <- c(bilanca_adidas[3, 1], bilanca_adidas[4,1], bilanca_adidas[5,1], bilanca_adidas[7,1], bilanca_adidas[8, 1], bilanca_adidas[9, 1], bilanca_adidas[10,1])
percentlabels <- round(100 *(slices/ bilanca_adidas[11,1]), 1)
pielabels<- paste(percentlabels, "%", sep="")
pie(slices, main="2019",labels = pielabels, col = colors, radius = 1, cex = 1.5, clockwise = TRUE)
legend(-2.5,1.3,lbls, fill = colors, ncol = 1, cex = 1.2, text.font = 4, text.width =1, bty = "n")


##########################################################################
colors1 <- colors <- c( brocolors("crayons")["Caribbean Green"], brocolors("crayons")["Sea Green"], brocolors("crayons")["Lemon Yellow"],  brocolors("crayons")["Canary"],  brocolors("crayons")["Banana Mania"],brocolors("crayons")["Orange"], brocolors("crayons")["Bittersweet"], brocolors("crayons")["Yellow Orange"])
lbls1 <- c("Capital", "Other shereholder funds", "Long term debt", "Other non-current liabilities", "Loans", "Creditors", "Other current liabilities", "Provisions")
slices <- c(bilanca_adidas[14, 1], bilanca_adidas[15,1], bilanca_adidas[17,1], bilanca_adidas[18,1],bilanca_adidas[19,1], bilanca_adidas[22, 1], bilanca_adidas[23,1], bilanca_adidas[21,1])
percentlabels <- round(100 *(slices/ bilanca_adidas[24,1]), 1)
pielabels<- paste(percentlabels, "%", sep="")
pie(slices, main="2019",labels = pielabels, col = colors, radius = 1, cex = 1.5, clockwise = TRUE)
legend(-2.5,1.1,lbls1, fill = colors1, ncol = 1, cex = 1.2, text.font = 4, text.width =1, bty = "n")





