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

IGK_puma <- read_excel("Data-Puma/IGK_puma.xlsx")



# ADIDAS

bilanca_adidas <- data.frame(read_excel("Data-Adidas/bilanca_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(bilanca_adidas) <- c(2019, 2018, 2017, 2016, 2015)

IPI_adidas <- data.frame(read_excel("Data-Adidas/IPI_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IPI_adidas) <- c(2019, 2018, 2017, 2016, 2015)

IDT_adiadas <- data.frame(read_excel("Data-Adidas/IDT_adidas.xlsx", na = "n.a.", skip = 1), row.names = 1)
colnames(IDT_adiadas) <- c(2019, 2018, 2017, 2016)

<<<<<<< HEAD
#manjka IGK

IGK_adidas_2019 <- data.frame(read_excel("Data-Adidas/IGK2019_Adidas.xls", na = "n.a", skip = 3, col_names = TRUE, n_max = 21))



IGK_adidas_2018 <- data.frame(read_excel("Data-Adidas/IGK2018_Adidas.xlsx", na = "n.a", skip = 4,n_max = 27))
=======
IGK_adidas <- data.frame(read_excel("Data-Adidas/IGK_Adidas.xlsx", na = "n.a", skip = 4, col_names = TRUE))





>>>>>>> upstream/main


