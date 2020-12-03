# Analiza bilance
bilanca_puma_analiza <- data.frame(rbind(round(mapply('/', bilanca_puma[1:11,], bilanca_puma[11,]), 3), 
                               round(mapply('/', bilanca_puma[12:24,], bilanca_puma[24,]), 3))*100, 
                               row.names = row.names(bilanca_puma))
colnames(bilanca_puma_analiza) <- c(2019, 2018, 2017, 2016, 2015)


# Analiza IPI
IPI_puma_analiza <- round(IPI_puma[]/IPI_puma$"2015" * 100)[3:14,]


