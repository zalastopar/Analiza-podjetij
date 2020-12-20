library(readxl)
# NIKE

bilanca_nike <- data.frame(read_excel("Data-Nike/Bilanca_nike.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(bilanca_nike) <- c(2019, 2018, 2017, 2016, 2015)

IPI_nike <- data.frame(read_excel("Data-Nike/IPI_nike.xlsx", na = "n.a."), row.names = 1)
colnames(IPI_nike) <- c(2019, 2018, 2017, 2016, 2015)

IDT_nike <- data.frame(read_excel("Data-Nike/IDT_nike.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IDT_nike) <- c(2019, 2018, 2017, 2016, 2015)

#manjka IGK

# PUMA

bilanca_puma <- read_excel("Data-Puma/Bilanca_puma.xlsx", na = "n.a.", skip = 1)
bilanca_puma[11, 1] <- "Total assets"
bilanca_puma <- data.frame(bilanca_puma, row.names = 1)
colnames(bilanca_puma) <- c(2019, 2018, 2017, 2016, 2015)


IPI_puma <- data.frame(read_excel("Data-Puma/IPI_puma.xlsx",na = "n.a.", skip = 1), row.names = 1)
colnames(IPI_puma) <- c(2019, 2018, 2017, 2016, 2015)

IDT_puma <- data.frame(read_excel("Data-Puma/IDT_puma.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IDT_puma) <- c(2019, 2018, 2017, 2016, 2015)

IGK_puma <- data.frame(read_excel("Data-Puma/IGK_puma.xlsx"))
IGK_puma <- type_convert(IGK_puma)



# ADIDAS

bilanca_adidas <- data.frame(read_excel("Data-Adidas/bilanca_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(bilanca_adidas) <- c(2019, 2018, 2017, 2016, 2015)

IPI_adidas <- data.frame(read_excel("Data-Adidas/IPI_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IPI_adidas) <- c(2019, 2018, 2017, 2016, 2015)

IDT_adiadas <- data.frame(read_excel("Data-Adidas/IDT_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IDT_adiadas) <- c(2019, 2018, 2017, 2016, 2015)



IGK_adidas <- data.frame(read_excel("Data-Adidas/IGK_Adidas.xlsx"))
IGK_adidas <- type_convert(IGK_adidas)
# pretvorba valut
IGK_adidas[1:7, 2:9] <- round(IGK_adidas[1:7, 2:9] * 1.0887, 2)
IGK_adidas[8:14, 2:9] <- round(IGK_adidas[8:14, 2:9] * 1.0541, 2)
IGK_adidas[15:26, 2:9] <- round(IGK_adidas[15:26, 2:9] * 1.1993, 2)
IGK_adidas[27:38, 2:9] <- round(IGK_adidas[27:38, 2:9] * 1.145, 2)
IGK_adidas[39:47, 2:9] <- round(IGK_adidas[39:47, 2:9] * 1.1234, 2)









