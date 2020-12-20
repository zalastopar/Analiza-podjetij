
# Dobičkonostnost kapitala ali ROE (Čisti dobiček / povprečni kapital)
time <- c(2019, 2018, 2017, 2016, 2015)
time2 <- c(2019, 2018, 2017, 2016)

# Povprečni kapital-Puma
p_k_2019_puma <- (sum(bilanca_puma[13 : 15,1]) + sum(bilanca_puma[13 : 15,2])) / 2
p_k_2018_puma <- (sum(bilanca_puma[13 : 15,2]) + sum(bilanca_puma[13 : 15,3])) / 2
p_k_2017_puma <- (sum(bilanca_puma[13 : 15,3]) + sum(bilanca_puma[13 : 15,4])) / 2
p_k_2016_puma <- (sum(bilanca_puma[13 : 15,4]) + sum(bilanca_puma[13 : 15,5])) / 2
povprecni_kapital_puma <- cbind("2019" = p_k_2019_puma, "2018" = p_k_2018_puma, "2017" = p_k_2017_puma, "2016"= p_k_2016_puma)

# ROE Puma 
ROE_puma <- data.frame(t(rbind("Time" = time2 , "Net_income" = IPI_puma[12,1 : 4],
                               "Capital" = povprecni_kapital_puma )))
ROE_puma$Ratio <- round(ROE_puma$Net_income/ROE_puma$Capital, 2)

# Povprečni kapital-Nike
p_k_2019_nike <- (sum(bilanca_nike[12 : 14,1]) + sum(bilanca_nike[12 : 14,2])) / 2
p_k_2018_nike <- (sum(bilanca_nike[12 : 14,2]) + sum(bilanca_nike[12 : 14,3])) / 2
p_k_2017_nike <- (sum(bilanca_nike[12 : 14,3]) + sum(bilanca_nike[12 : 14,4])) / 2
p_k_2016_nike <- (sum(bilanca_nike[12 : 14,4]) + sum(bilanca_nike[12 : 14,5])) / 2
povprecni_kapital_nike <- cbind("2019" = p_k_2019_nike, "2018" = p_k_2018_nike, "2017" = p_k_2017_nike, "2016"= p_k_2016_nike)

# ROE Nike
ROE_nike <- data.frame(t(rbind("Time" = time2 , "Net_income" = IPI_nike[12,1 : 4],
                               "Capital" = povprecni_kapital_nike )))
ROE_nike$Ratio <- round(ROE_nike$Net_income/ROE_nike$Capital, 2)

# Povprečni kapital-adidas
p_k_2019_adidas <- (sum(bilanca_adidas[13 : 15,1]) + sum(bilanca_adidas[13 : 15,2])) / 2
p_k_2018_adidas <- (sum(bilanca_adidas[13 : 15,2]) + sum(bilanca_adidas[13 : 15,3])) / 2
p_k_2017_adidas <- (sum(bilanca_adidas[13 : 15,3]) + sum(bilanca_adidas[13 : 15,4])) / 2
p_k_2016_adidas <- (sum(bilanca_adidas[13 : 15,4]) + sum(bilanca_adidas[13 : 15,5])) / 2
povprecni_kapital_adidas <- cbind("2019" = p_k_2019_adidas, "2018" =p_k_2018_adidas, "2017" = p_k_2017_adidas, "2016"=p_k_2016_adidas)

# ROE adidas
ROE_adidas <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_adidas[12,1 : 4],
                                 "Capital" = povprecni_kapital_adidas)))
ROE_adidas$Ratio <- round(ROE_adidas$Net_income/ROE_adidas$Capital, 2)

# Graf za ROE za vsa tri podjetja
graf_ROE <- plot(ROE_puma[, c(1, 4)], type = "l", col = "blue", main = "Dobičkonostnost kapitala",
                          ylim = c(0, 0.2), xlim = c(2015, 2019))
lines(ROE_adidas[, c(1, 4)], col = "green")
lines(ROE_nike[, c(1, 4)], col = "pink")
text(x = c(2015.4, 2016.5, 2016.5), y = c(0.03,  0.15, 0.09), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))


# Dobičkonostnost sredstev ali ROA(čisti dobiček / povprečna sredstva)

# Povprečna sredstva-Puma
p_s_2019_puma <- (bilanca_puma[11,1] + bilanca_puma[11,2]) / 2
p_s_2018_puma <- (bilanca_puma[11,2] + bilanca_puma[11,3]) / 2
p_s_2017_puma <- (bilanca_puma[11,3] + bilanca_puma[11,4]) / 2
p_s_2016_puma <- (bilanca_puma[11,4] + bilanca_puma[11,5]) / 2
povprecna_sredstva_puma <- cbind("2019" = p_s_2019_puma, "2018" = p_s_2018_puma, "2017" = p_s_2017_puma, "2016" = p_s_2016_puma)

# ROA Puma
ROA_puma <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_puma[12, 1:4],
                               "Assets" = povprecna_sredstva_puma)))
ROA_puma$Ratio <- round(ROA_puma$Net_income/ROA_puma$Assets, 2)

# Povprečna sredstva-Nike
p_s_2019_nike <- (bilanca_nike[10,1] + bilanca_nike[10,2]) / 2
p_s_2018_nike <- (bilanca_nike[10,2] + bilanca_nike[10,3]) / 2
p_s_2017_nike <- (bilanca_nike[10,3] + bilanca_nike[10,4]) / 2
p_s_2016_nike <- (bilanca_nike[10,4] + bilanca_nike[10,5]) / 2
povprecna_sredstva_nike <- cbind("2019" = p_s_2019_nike, "2018" = p_s_2018_nike, "2017" = p_s_2017_nike, "2016" = p_s_2016_nike)

# ROA Nike
ROA_nike <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_nike[12, 1:4],
                               "Assets" = povprecna_sredstva_nike)))
ROA_nike$Ratio <- round(ROA_nike$Net_income/ROA_nike$Assets, 2)

# Povprečna sredstva-Adidas
p_s_2019_adidas <- (bilanca_adidas[11,1] + bilanca_adidas[11,2]) / 2
p_s_2018_adidas <- (bilanca_adidas[11,2] + bilanca_adidas[11,3]) / 2
p_s_2017_adidas <- (bilanca_adidas[11,3] + bilanca_adidas[11,4]) / 2
p_s_2016_adidas <- (bilanca_adidas[11,4] + bilanca_adidas[11,5]) / 2
povprecna_sredstva_adidas <- cbind("2019" = p_s_2019_adidas, "2018" = p_s_2018_adidas, "2017" = p_s_2017_adidas, "2016" = p_s_2016_adidas)

# ROA adidas
ROA_adidas <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_adidas[12, 1:4],
                                 "Assets" = povprecna_sredstva_adidas)))
ROA_adidas$Ratio <- round(ROA_adidas$Net_income/ROA_adidas$Assets, 2)

# Graf dobičkonostnosti sredstev za vsa tri podjetja
graf_ROA <- plot(ROA_puma[, c(1, 4)], type = "l", col = "blue", main = "Dobičkonostnost sredstev",
                 ylim = c(0, 0.3), xlim = c(2016, 2019))
lines(ROA_nike[, c(1, 4)], col = "pink")
lines(ROA_adidas[, c(1, 4)], col = "green")
text(x = c(2018, 2017.5, 2017), y = c(0.02, 0.2, 0.1), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))

# Marža (čisti dobiček(izguba) / prihodki)

# Profitna marža za pumo
marza_puma <- data.frame(t(rbind("Time" = time, "Net_income" = IPI_puma[12,],
                                 "Revenue" = IPI_puma[1,] + IPI_puma[6,]))) 
marza_puma$Ratio <- round(marza_puma$Net_income/marza_puma$Revenue, 2)

# Profitna marža za nike
marza_nike <- data.frame(t(rbind("Time" = time, "Net_income" = IPI_nike[12,],
                                 "Revenue" = IPI_nike[1,] + IPI_nike[6,])))
marza_nike$Ratio <- round(marza_nike$Net_income/marza_nike$Revenue, 2)

# Profitna marža za adidas
marza_adidas <- data.frame(t(rbind("Time"= time, "Net_income" = IPI_adidas[12,],
                                   "Revenue" = IPI_adidas[1, ] + IPI_adidas[6,])))
marza_adidas$Ratio <- round(marza_adidas$Net_income/marza_adidas$Revenue, 2)

# Graf profitne marže za vsa tri podjetja
graf_marza <- plot(marza_puma[, c(1, 4)], type = "l", col = "blue", main = "Profitna marza",
                          ylim = c(0, 0.15), xlim = c(2015, 2019))
lines(marza_nike[, c(1, 4)], col = "pink")
lines(marza_adidas[, c(1, 4)], col = "green")
text(x = c(2015.5, 2016, 2017), y = c(0.03,  0.10, 0.06), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))

# Prihodki / Povprečna sredstva

# Puma
asset_turnover_ratio_puma <- data.frame(t(rbind("Time" = time2, "Revenue" = IPI_puma[1, 1:4] + IPI_puma[6, 1:4],
                                                "Assets" = povprecna_sredstva_puma)))
asset_turnover_ratio_puma$Ratio <- round(asset_turnover_ratio_puma$Revenue/asset_turnover_ratio_puma$Assets,2)

# Nike
asset_turnover_ratio_nike <- data.frame(t(rbind("Time" = time2, "Revenue" = IPI_nike[1, 1:4] + IPI_nike[6, 1:4],
                                                "Assets" = povprecna_sredstva_nike)))
asset_turnover_ratio_nike$Ratio <- round(asset_turnover_ratio_nike$Revenue/asset_turnover_ratio_nike$Assets,2)

# Adidas
asset_turnover_ratio_adidas <- data.frame(t(rbind("Time" = time2, "Revenue" = IPI_adidas[1, 1:4] + IPI_adidas[6, 1:4],
                                                "Assets" = povprecna_sredstva_adidas)))
asset_turnover_ratio_adidas$Ratio <- round(asset_turnover_ratio_adidas$Revenue/asset_turnover_ratio_adidas$Assets,2)

# Graf za asset turnover ratio
graf_asset_turnover_ratio <- plot(asset_turnover_ratio_puma[, c(1, 4)], type = "l", col = "blue", main = "Assets turnover ratio",
                          ylim = c(1.3, 2), xlim = c(2015, 2019))
lines(asset_turnover_ratio_nike[, c(1, 4)], col = "pink")
lines(asset_turnover_ratio_adidas[, c(1, 4)], col = "green")
text(x = c(2018.5, 2018.5, 2018), y = c(1.5,  1.7, 1.4), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))



# Razmerje med kratkorocnimi terjatvami in kratkorocnimi obveznostmi iz poslovanja
AR_AP_puma <- data.frame(t(rbind("Time" = time, "Accounts receivable" = bilanca_puma[8,],
                                 "Accounts payable" = bilanca_puma[22,] +  + bilanca_puma[23,])))
AR_AP_puma$Ratio <- round(AR_AP_puma$Accounts.receivable/AR_AP_puma$Accounts.payable, 2)


AR_AP_nike <- data.frame(t(rbind("Time" = time, "Accounts receivable" = bilanca_nike[7,],
                                 "Accounts payable" = bilanca_nike[21,] + bilanca_nike[22,])))
AR_AP_nike$Ratio <- round(AR_AP_nike$Accounts.receivable/AR_AP_nike$Accounts.payable, 2)

AR_AP_adidas <- data.frame(t(rbind("Time" = time, "Accounts receivable" = bilanca_adidas[8, ],
                                   "Accounts payable" = bilanca_adidas[22,] + bilanca_adidas[23,])))
AR_AP_adidas$Ratio <- round(AR_AP_adidas$Accounts.receivable/AR_AP_adidas$Accounts.payable, 2)

png("Graphs/kt_ko.png")
plot(AR_AP_puma[, c(1, 4)], type = "l", ylab = "Ratio", xlab = "Time", 
                                           main = "AR/AP ratio", lwd = 2, col = "lightskyblue", ylim = c(0.29, 0.7))
lines(AR_AP_nike[, c(1,4)], type = "l", col = "hotpink", lwd = 2)
lines(AR_AP_adidas[, c(1, 4)], type = "l", col = "palegreen", lwd = 2)
text(x = c(2017.4, 2018.5, 2016.2), y = c(0.52, 0.6, 0.4), labels = c("Puma", "Nike", "Adidas"), col = c("lightskyblue", "hotpink", "palegreen"))
dev.off()


# Delež osnovnih sredstev v sredstvih - (neopredmetena dolgoročna sredstva + opredmetena osnovna sredstva)/sredstva


os_puma <- data.frame(t(rbind("Time" = time, "Fixed assets" = bilanca_puma[3,] + bilanca_puma[4,],
                                         "Assets" = bilanca_puma[11,])))
os_puma$Ratio <- round(os_puma$Fixed.assets/os_puma$Assets, 2)


os_nike <- data.frame(t(rbind("Time" = time, "Fixed assets" = bilanca_nike[2,] + bilanca_nike[3,],
                              "Assets" = bilanca_nike[10,])))
os_nike$Ratio <- round(os_nike$Fixed.assets/os_nike$Assets, 2)

os_adidas <- data.frame(t(rbind("Time" = time, "Fixed assets" = bilanca_adidas[3, ] + bilanca_adidas[4,],
                                "Assets" = bilanca_adidas[11,])))
os_adidas$Ratio <- round(os_adidas$Fixed.assets/os_adidas$Assets, 2)

png("Graphs/OS_S.png")
plot(os_puma[, c(1, 4)], type = "l", col = "lightskyblue", main = "Fixed assets in assets",
                          ylim = c(0, 0.5), xlim = c(2015, 2019), lwd = 2)
lines(os_nike[, c(1, 4)], col = "hotpink", lwd = 2)
lines(os_adidas[, c(1, 4)], col = "palegreen", lwd = 2)
text(x = c(2015.3, 2016.3, 2018.4), y = c(0.3,  0.13, 0.33), labels = c("Puma", "Nike", "Adidas"), col = c("lightskyblue", "hotpink", "palegreen"))
dev.off()


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

png("Graphs/P_E_ratio.png")
plot(Puma_PE[, c(1, 4)], type = "l", ylab = "Ratio", xlab = "Time", 
                       main = "p/E ratio", col = "lightskyblue", ylim = c(19, 65), lwd = 2)
lines(Nike_PE[, c(1,4)], type = "l", col = "hotpink", lwd = 2)
lines(Adidas_PE[, c(1, 4)], type = "l", col = "palegreen", lwd = 2)
text(x = c(2016.4, 2018.75, 2018), y = c(60, 55, 28), labels = c("Puma", "Nike", "Adidas"), col = c("lightskyblue", "hotpink", "palegreen"))
dev.off()


# zakljucek
sales <- data.frame("t" = time, "a" = t(IPI_adidas[1,]), "n" = t(IPI_nike[1,]), "p" = t(IPI_puma[1,]))

png("Graphs/zasluzek.png")
plot(sales[,c(1,2)], type = "l", col = "palegreen", ylim = c(3000000, 40000000), xlab = "Time", main = "Sales through time")
lines(sales[,c(1, 3)], col = "hotpink", type = "l")
lines(sales[,c(1, 4)], col = "lightskyblue", type = "l")
text(x = c(2015.4, 2016.4, 2018.2), y = c(5700000, 35500000, 28100000), labels = c("Puma", "Nike", "Adidas"), col = c("lightskyblue", "hotpink", "palegreen"))
dev.off()