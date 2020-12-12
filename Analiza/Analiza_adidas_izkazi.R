# Analiza bilance
bilanca_adidas_navpicna_analiza <- data.frame(rbind(round(mapply('/', bilanca_adidas[1:11,], bilanca_adidas[11,]), 3), 
                                         round(mapply('/', bilanca_adidas[12:24,], bilanca_adidas[24,]), 3))*100, 
                                   row.names = row.names(bilanca_puma))
colnames(bilanca_adidas_navpicna_analiza) <- c(2019, 2018, 2017, 2016, 2015)



# Analiza IPI

IPI_adidas_analiza <- round(IPI_adidas[]/IPI_adidas$"2015" * 100)


