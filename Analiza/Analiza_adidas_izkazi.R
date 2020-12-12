# Analiza bilance
bilanca_adidas_navpicna_analiza <- data.frame(rbind(round(mapply('/', bilanca_adidas[1:11,], bilanca_adidas[11,]), 3), 
                                         round(mapply('/', bilanca_adidas[12:24,], bilanca_adidas[24,]), 3))*100, 
                                   row.names = row.names(bilanca_puma))
colnames(bilanca_adidas_navpicna_analiza) <- c(2019, 2018, 2017, 2016, 2015)



# Analiza IPI

IPI_adidas_analiza <- round(IPI_adidas[]/IPI_adidas$"2015" * 100)


# Analiza IGK 
dividende <- data.frame("time" = c(2016, 2017, 2018, 2019), 
                        "div adidas" = c(-IGK_adidas[12, 9]*1.0541, -IGK_adidas[24, 9]*1.199, -IGK_adidas[36, 9]*1.145, -IGK_adidas[44, 9]*1.1234),
                        "div puma" = c(-IGK_puma[5, 11]*1.0541, -IGK_puma[11, 11]*1.1993, -IGK_puma[19, 11]*1.145, -IGK_puma[25, 11]*1.1234),
                        "div nike" = c(821, 1159, 1265, 1360))

graf_dividende <- plot(dividende[, c(1, 3)], main = "Izplacane dividende", col = "blue", type = "l", ylim = c(26, 1380), ylab = "mio $")
lines(dividende[,c(1, 2)], col = "green")
lines(dividende[,c(1, 4)], col = "pink")
text(x = c(2016.3, 2017, 2016.3), y = c(150,  650, 1100), labels = c("Puma", "Adidas", "Nike"), col = c("blue", "green", "pink"))
