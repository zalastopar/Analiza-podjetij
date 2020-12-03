# Celotna gospodarnost - skupni prihodki/skupni odhodki
time <- c(2019, 2018, 2017, 2016, 2015)
time2 <- c(2019, 2018, 2017, 2016)


gospodarnosti_puma <- data.frame(t(rbind("Time" = time, "Revenue" = IPI_puma[1, ] + IPI_puma[6,],
                                         "Expenses" = IPI_puma[2,] + IPI_puma[4,] + IPI_puma[7,] + IPI_puma[9,] + IPI_puma[11,])))
gospodarnosti_puma$Ratio <- round(gospodarnosti_puma$Revenue/gospodarnosti_puma$Expenses, 2)


gospodarnosti_nike <- data.frame(t(rbind("Time" = time, "Revenue" = IPI_nike[1,] + IPI_nike[6,],
                                         "Expenses" = IPI_nike[2,] + IPI_nike[4,] + IPI_nike[7,] + IPI_nike[9,])))
gospodarnosti_nike[2, 3] <- gospodarnosti_nike[2, 3] + IPI_nike[11,2]
gospodarnosti_nike$Ratio <- round(gospodarnosti_nike$Revenue/gospodarnosti_nike$Expenses, 2)

gospodarnosti_adidas <- data.frame(t(rbind("Time" = time, "Revenue" = IPI_adidas[1, ] + IPI_adidas[6,],
                                           "Expenses" = IPI_adidas[2,] + IPI_adidas[4,] + IPI_adidas[7,] + IPI_adidas[9,] + IPI_adidas[11,])))
gospodarnosti_adidas$Ratio <- round(gospodarnosti_adidas$Revenue/gospodarnosti_adidas$Expenses, 2)

graf_gospodarnost <- plot(gospodarnosti_puma[, c(1, 4)], type = "l", col = "blue", main = "Celotna gospodarnost",
                          ylim = c(1, 1.22), xlim = c(2015, 2019))
lines(gospodarnosti_nike[, c(1, 4)], col = "pink")
lines(gospodarnosti_adidas[, c(1, 4)], col = "green")
text(x = c(2018.4, 2016.3, 2015.4), y = c(1.03,  1.16, 1.05), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))


# Kazalniki tržnih vrednosti - Razmerje med ceno delnice ter dobičkom na delnico (P/E ratio)


Puma_EPS <- c(1.76, 1.25, 0.91, 0.42) 
Puma_stock_P <- c( 68.35, 42.70, 36.30, 24.97)
Puma_PE <- data.frame("Time" = time2, "Stock price" = Puma_stock_P, "EPS" = Puma_EPS)
Puma_PE$Ratio <- round(Puma_PE$Stock.price/Puma_PE$EPS, 2)

Nike_EPS <- c(2.49, 1.17, 2.51, 2.16)
Nike_stock_P <- c(101.31, 74.14, 62.55, 50.83)
Nike_PE <- data.frame("Time" = time2, "Stock price" = Nike_stock_P, "EPS" = Nike_EPS)
Nike_PE$Ratio <- round(Nike_PE$Stock.price/Nike_PE$EPS, 2)

Adidas_EPS <- c(5.60, 4.98, 3.06, 2.81)
Adidas_stock_P <- c(162.80, 104.34, 99.82, 78.55)
Adidas_PE <- data.frame("Time" = time2, "Stock price" = Adidas_stock_P, "EPS" = Adidas_EPS)
Adidas_PE$Ratio <- round(Adidas_PE$Stock.price/Adidas_PE$EPS, 2)


graf_P_E_ratio <- plot(Puma_PE[, c(1, 4)], type = "l", ylab = "Ratio", xlab = "Time", 
                       main = "p/E ratio", col = "blue", ylim = c(19, 65))
lines(Nike_PE[, c(1,4)], type = "l", col = "pink")
lines(Adidas_PE[, c(1, 4)], type = "l", col = "green")
text(x = c(2016.4, 2018.75, 2018), y = c(60, 55, 28), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))


