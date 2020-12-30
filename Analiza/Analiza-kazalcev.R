library(broman)
# Dobičkonostnost kapitala ali ROE (Čisti dobiček / povprečni kapital)
time <- c(2019, 2018, 2017, 2016, 2015)
time2 <- c(2019, 2018, 2017, 2016)

# Povprečni kapital-Puma
p_k_2019_puma <- (sum(bilanca_puma[13,1]) + sum(bilanca_puma[13,2])) / 2
p_k_2018_puma <- (sum(bilanca_puma[13,2]) + sum(bilanca_puma[13,3])) / 2
p_k_2017_puma <- (sum(bilanca_puma[13,3]) + sum(bilanca_puma[13,4])) / 2
p_k_2016_puma <- (sum(bilanca_puma[13,4]) + sum(bilanca_puma[13,5])) / 2
povprecni_kapital_puma <- cbind("2019" = p_k_2019_puma, "2018" = p_k_2018_puma, "2017" = p_k_2017_puma, "2016"= p_k_2016_puma)

# ROE Puma 

# Povprečni kapital-Nike
p_k_2019_nike <- (sum(bilanca_nike[12,1]) + sum(bilanca_nike[12,2])) / 2
p_k_2018_nike <- (sum(bilanca_nike[12,2]) + sum(bilanca_nike[12,3])) / 2
p_k_2017_nike <- (sum(bilanca_nike[12,3]) + sum(bilanca_nike[12,4])) / 2
p_k_2016_nike <- (sum(bilanca_nike[12,4]) + sum(bilanca_nike[12,5])) / 2
povprecni_kapital_nike <- cbind("2019" = p_k_2019_nike, "2018" = p_k_2018_nike, "2017" = p_k_2017_nike, "2016"= p_k_2016_nike)

# ROE Nike
ROE_nike <- data.frame(t(rbind("Time" = time2 , "Net_income" = IPI_nike[12,1 : 4],
                               "Capital" = povprecni_kapital_nike )))
ROE_nike$Percentage <- round((ROE_nike$Net_income/ROE_nike$Capital)* 100, 2)

# Povprečni kapital-adidas
p_k_2019_adidas <- (sum(bilanca_adidas[13 ,1]) + sum(bilanca_adidas[13,2])) / 2
p_k_2018_adidas <- (sum(bilanca_adidas[13 ,2]) + sum(bilanca_adidas[13,3])) / 2
p_k_2017_adidas <- (sum(bilanca_adidas[13 ,3]) + sum(bilanca_adidas[13,4])) / 2
p_k_2016_adidas <- (sum(bilanca_adidas[13 ,4]) + sum(bilanca_adidas[13,5])) / 2
povprecni_kapital_adidas <- cbind("2019" = p_k_2019_adidas, "2018" =p_k_2018_adidas, "2017" = p_k_2017_adidas, "2016"=p_k_2016_adidas)

# ROE adidas
ROE_adidas <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_adidas[12,1 : 4],
                                 "Capital" = povprecni_kapital_adidas)))
ROE_adidas$Percentage <- round((ROE_adidas$Net_income/ROE_adidas$Capital) * 100, 2)

# Graf za ROE za vsa tri podjetja
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_ROE <- plot(ROE_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Violet Blue"], 
                 main = "Dobičkonostnost kapitala", cex.main = 2,cex.lab = 1.5, cex.axis = 1.5,
                 ylim = c(3,45), xlim = c(2016, 2019), lwd = 3)
lines(ROE_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
lines(ROE_nike[, c(1, 4)], col = brocolors("crayons")["Wild Strawberry"], lwd = 3)
text(x = c(2018, 2016.5, 2016.5), y = c(8,  35, 20), labels = c("Puma", "Nike", "Adidas"), col = colors)


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
ROA_puma$Percentage <- round((ROA_puma$Net_income/ROA_puma$Assets) * 100, 2)

# Povprečna sredstva-Nike
p_s_2019_nike <- (bilanca_nike[10,1] + bilanca_nike[10,2]) / 2
p_s_2018_nike <- (bilanca_nike[10,2] + bilanca_nike[10,3]) / 2
p_s_2017_nike <- (bilanca_nike[10,3] + bilanca_nike[10,4]) / 2
p_s_2016_nike <- (bilanca_nike[10,4] + bilanca_nike[10,5]) / 2
povprecna_sredstva_nike <- cbind("2019" = p_s_2019_nike, "2018" = p_s_2018_nike, "2017" = p_s_2017_nike, "2016" = p_s_2016_nike)

# ROA Nike
ROA_nike <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_nike[12, 1:4],
                               "Assets" = povprecna_sredstva_nike)))
ROA_nike$Percentage <- round((ROA_nike$Net_income/ROA_nike$Assets )* 100, 2)

# Povprečna sredstva-Adidas
p_s_2019_adidas <- (bilanca_adidas[11,1] + bilanca_adidas[11,2]) / 2
p_s_2018_adidas <- (bilanca_adidas[11,2] + bilanca_adidas[11,3]) / 2
p_s_2017_adidas <- (bilanca_adidas[11,3] + bilanca_adidas[11,4]) / 2
p_s_2016_adidas <- (bilanca_adidas[11,4] + bilanca_adidas[11,5]) / 2
povprecna_sredstva_adidas <- cbind("2019" = p_s_2019_adidas, "2018" = p_s_2018_adidas, "2017" = p_s_2017_adidas, "2016" = p_s_2016_adidas)

# ROA adidas
ROA_adidas <- data.frame(t(rbind("Time" = time2, "Net_income" = IPI_adidas[12, 1:4],
                                 "Assets" = povprecna_sredstva_adidas)))
ROA_adidas$Percentage <- round((ROA_adidas$Net_income/ROA_adidas$Assets) * 100, 2)

# Graf dobičkonostnosti sredstev za vsa tri podjetja
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_ROA <- plot(ROA_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"], main = "Dobičkonostnost sredstev",
                 ylim = c(2, 20), xlim = c(2016, 2019), lwd =3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(ROA_nike[, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"], lwd = 3)
lines(ROA_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
text(x = c(2017.5, 2017.5, 2016.5), y = c(7, 16, 9), labels = c("Puma", "Nike", "Adidas"), col = colors)

# Marža (čisti dobiček(izguba) / prihodki)

# Profitna marža za pumo
marza_puma <- data.frame(t(rbind("Time" = time, "Net_income" = IPI_puma[12,],
                                 "Revenue" = IPI_puma[1,] + IPI_puma[6,]))) 
marza_puma$Percentage <- round((marza_puma$Net_income/marza_puma$Revenue) * 100, 2)

# Profitna marža za nike
marza_nike <- data.frame(t(rbind("Time" = time, "Net_income" = IPI_nike[12,],
                                 "Revenue" = IPI_nike[1,] + IPI_nike[6,])))
marza_nike$Percentage <- round((marza_nike$Net_income/marza_nike$Revenue) * 100, 2)

# Profitna marža za adidas
marza_adidas <- data.frame(t(rbind("Time"= time, "Net_income" = IPI_adidas[12,],
                                   "Revenue" = IPI_adidas[1, ] + IPI_adidas[6,])))
marza_adidas$Percentage <- round((marza_adidas$Net_income/marza_adidas$Revenue) * 100, 2)

# Graf profitne marže za vsa tri podjetja
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_marza <- plot(marza_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"], main = "Profitna marža",
                          ylim = c(1,13), xlim = c(2016, 2019), lwd = 3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(marza_nike[, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"], lwd = 3)
lines(marza_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
text(x = c(2018.5, 2017.5, 2016.5), y = c(4,  10, 6), labels = c("Puma", "Nike", "Adidas"), col = c("blue", "pink", "green"))

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
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_asset_turnover_ratio <- plot(asset_turnover_ratio_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"], main = "Razmerje med prihodki in povprečnimi sredstvi",
                          ylim = c(1.3, 1.9), xlim = c(2016, 2019), lwd = 3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(asset_turnover_ratio_nike[, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"])
lines(asset_turnover_ratio_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"])
text(x = c(2018.5, 2018.5, 2018), y = c(1.5,  1.7, 1.4), labels = c("Puma", "Nike", "Adidas"), col = colors)

###################################################################################################################################################

#Obračanje celotnih sredstev

#Puma 
Obracanje_celotnih_sredstev_puma <- data.frame(t(rbind("Time" = time2 , "Revenue" = IPI_puma[1,1 : 4] + IPI_puma[6,1:4],
                               "Assets" = povprecna_sredstva_puma )))
Obracanje_celotnih_sredstev_puma$Ratio <- round(Obracanje_celotnih_sredstev_puma$Revenue/Obracanje_celotnih_sredstev_puma$Assets, 2)

# Adidas
Obracanje_celotnih_sredstev_adidas <- data.frame(t(rbind("Time" = time2 , "Revenue" = IPI_adidas[1,1 : 4] + IPI_adidas[6,1:4],
                                                      "Assets" = povprecna_sredstva_adidas )))
Obracanje_celotnih_sredstev_adidas$Ratio <- round(Obracanje_celotnih_sredstev_adidas$Revenue/Obracanje_celotnih_sredstev_adidas$Assets, 2)

# Nike
Obracanje_celotnih_sredstev_nike <- data.frame(t(rbind("Time" = time2 , "Revenue" = IPI_nike[1,1 : 4] + IPI_nike[6,1:4],
                                                         "Assets" = povprecna_sredstva_nike )))
Obracanje_celotnih_sredstev_nike$Ratio <- round(Obracanje_celotnih_sredstev_nike$Revenue/Obracanje_celotnih_sredstev_nike$Assets, 2)

# Graf
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_obračanje<- plot(Obracanje_celotnih_sredstev_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"], main = "Obračanje celotnih sredstev",
                 ylim = c(1, 1.9), xlim = c(2016, 2019), lwd =3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(Obracanje_celotnih_sredstev_nike[, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"], lwd = 3)
lines(Obracanje_celotnih_sredstev_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
text(x = c(2018.8, 2016.3, 2018.5), y = c(1.5, 1.55, 1.3), labels = c("Puma", "Nike", "Adidas"), col = colors)

# Delež kapitala v financiranju

# Puma

#Puma 
delez_kapitala_puma <- data.frame(t(rbind("Time" = time2 , "Capital" = bilanca_puma[13, 1:4],
                                                       "Liabilities" = bilanca_puma[24, 1:4] )))
delez_kapitala_puma$Ratio <- round(delez_kapitala_puma$Capital/delez_kapitala_puma$Liabilities, 2)

# Adidas
delez_kapitala_adidas <- data.frame(t(rbind("Time" = time2 , "Capital" = bilanca_adidas[13, 1:4],
                                          "Liabilities" = bilanca_adidas[24, 1:4] )))
delez_kapitala_adidas$Ratio <- round(delez_kapitala_adidas$Capital/delez_kapitala_adidas$Liabilities, 2)

# Nike
delez_kapitala_nike <- data.frame(t(rbind("Time" = time2 , "Capital" = bilanca_nike[12, 1:4],
                                            "Liabilities" = bilanca_nike[23, 1:4] )))
delez_kapitala_nike$Ratio <- round(delez_kapitala_nike$Capital/delez_kapitala_nike$Liabilities, 2)

colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_kapital <- plot(delez_kapitala_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"], main = "Delež kapitala v financiranju",
                 ylim = c(0.2, 0.7), xlim = c(2016, 2019), lwd =3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(delez_kapitala_nike [, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"], lwd = 3)
lines(delez_kapitala_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
text(x = c(2018.8, 2018.3, 2016.5), y = c(0.5, 0.45, 0.45), labels = c("Puma", "Nike", "Adidas"), col = colors)

# kratkoročna sredstva - zaloge / kratkoročne obveznosti
# Puma
kazalnik_puma <- data.frame(t(rbind("Time" = time2 , "CA_S" = bilanca_puma[6, 1:4] - bilanca_puma[7,1:4],
                                          "CL" = bilanca_puma[20, 1:4] )))
kazalnik_puma$Ratio <- round(kazalnik_puma$CA_S/kazalnik_puma$CL, 2)

# Adidas
kazalnik_adidas <- data.frame(t(rbind("Time" = time2 , "CA_S" = bilanca_adidas[6, 1:4] - bilanca_adidas[7,1:4],
                                    "CL" = bilanca_adidas[20, 1:4] )))
kazalnik_adidas$Ratio <- round(kazalnik_adidas$CA_S/kazalnik_adidas$CL, 2)

# Nike
kazalnik_nike <- data.frame(t(rbind("Time" = time2 , "CA_S" = bilanca_nike[5, 1:4] - bilanca_nike[6,1:4],
                                      "CL" = bilanca_nike[19, 1:4] )))
kazalnik_nike$Ratio <- round(kazalnik_nike$CA_S/kazalnik_nike$CL, 2)

# Graf
colors <- c( brocolors("crayons")["Purple Heart"], brocolors("crayons")["Purple Pizzazz"], brocolors("crayons")["Inchworm"])
par(mfrow= c(1,1))
graf_kazalnik <- plot(kazalnik_puma[, c(1, 4)], type = "l", col = brocolors("crayons")["Purple Heart"],
                 ylim = c(0.5, 2.5), xlim = c(2016, 2019), lwd =3, cex.main = 2, cex.lab = 1.5, cex.axis = 1.5)
lines(kazalnik_nike[, c(1, 4)], col = brocolors("crayons")["Purple Pizzazz"], lwd = 3)
lines(kazalnik_adidas[, c(1, 4)], col = brocolors("crayons")["Inchworm"], lwd = 3)
text(x = c(2016.5, 2016.3, 2018.5), y = c(1.3, 2.1, 0.8), labels = c("Puma", "Nike", "Adidas"), col = colors)






##################################################################################################################################################


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