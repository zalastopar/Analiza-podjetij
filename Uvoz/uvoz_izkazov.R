# NIKE

bilanca_nike <- read_excel("Data-Nike/Bilanca_nike.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016), 
                           na = "n.a.", skip = 1)

IPI_nike <- read_excel("Data-Nike/IPI_nike.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016), 
                                       na = "n.a.", skip = 1)
IDT_nike <- read_excel("Data-Nike/IDT_nike.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016), 
                       na = "n.a.", skip = 1)
#manjka IGK

# PUMA

bilanca_puma <- read_excel("Data-Puma/Bilanca_puma.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                           na = "n.a.", skip = 1)
row.names(bilanca_puma) <- bilanca_puma$kategorija

IPI_puma <- read_excel("Data-Puma/IPI_puma.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                       na = "n.a.", skip = 1)

IDT_puma <- read_excel("Data-Puma/IDT_puma.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                       na = "n.a.", skip = 1)

IGK_puma <- read_excel("Data-Puma/IGK_puma.xlsx")




# ADIDAS

bilanca_adidas <- read_excel("Data-Adidas/bilanca_adidas.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                             na = "n.a.", skip = 1)

IPI_adidas <- read_excel("Data-Adidas/IPI_adidas.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                         na = "n.a.", skip = 1)

IDT_adiadas <- read_excel("Data-Adidas/IDT_adidas.xlsx", col_names = c("kategorija", 2019, 2018, 2017, 2016, 2015), 
                          na = "n.a.", skip = 1)

#manjka IGK