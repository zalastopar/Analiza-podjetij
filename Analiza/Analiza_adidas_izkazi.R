# Analiza bilance
bilanca_adidas_navpicna_analiza <- data.frame(rbind(round(mapply('/', bilanca_adidas[1:11,], bilanca_adidas[11,]), 3), 
                                         round(mapply('/', bilanca_adidas[12:24,], bilanca_adidas[24,]), 3))*100, 
                                   row.names = row.names(bilanca_puma))
colnames(bilanca_adidas_navpicna_analiza) <- c(2019, 2018, 2017, 2016, 2015)



# Analiza IPI

IPI_adidas_analiza <- round(IPI_adidas[]/IPI_adidas$"2015" * 100)


# Analiza IDT

# Kratkorocne financne nalozbe
kfn <- data.frame("Current financial asset" = c("Currency options", "Forward exchange contracts", "Revaluation of total return swap",
                                                "Security deposits", "Receivables from creditcards \n and similar receivables", "Promissory notes",
                                                "Earn-out components", "Sundry"),
                  "Value"= c(18, 118, 30, 28, 165, 34, 9, 152))
# Dolgorocne financnce nalozbe
dfn <- data.frame("Non-current financial asset" = c("Currency options", "Forward exchange contracts", "Revaluation of total return swap",
                                                    "Security deposits", "Options", "Earn-out components", "Promissory notes"),
                  "Value" = c(10, 2, 59, 110, 86, 36, 149))


kolacnik_kfn <- ggplot(kfn, aes(x = "", y = Value, fill = Current.financial.asset)) + 
  geom_bar(stat = "identity", color = "white") +
  labs(title ="Current financial assets", fill = "") +
  coord_polar("y") + theme_void() + scale_fill_brewer(palette="Set3") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5))

kolacnik_dfn <- ggplot(dfn, aes(x = "", y = Value, fill = Non.current.financial.asset)) + 
  geom_bar(stat = "identity", color = "white") +
  labs(title ="Non current financial assets", fill = "") +
  coord_polar("y") + theme_void() + scale_fill_brewer(palette="Set3") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5))


png("Graphs/kfn_dfn.png", width = 410, height = 600)
grid.arrange(kolacnik_dfn, kolacnik_kfn)
dev.off()



# posojila
posojila <- data.frame("num" = c(165 * 1.1234, 986*1.1234, 487*1.1234, 207*1.145, 984*1.145, 484*1.145, 106 * 1.1993, 983* 1.19933, 31* 1.1993, 379*1.0541, 982*1.0541, 257*1.0541),
                       "What" = rep(c("Bank borrowings", "Eurobonds", "Convertible bond"), 4),
                       "Year" = c(rep(2019, 3), rep(2018, 3), rep(2017, 3), rep(2016, 3)))
png("Graphs/posojila.png")          
graf_posojila <- barchart(num ~ What, data = posojila, groups = Year, main = "Financing structure", ylab = "[mio $]",
              auto.key=list(space="top", columns=4, title="Legend", cex.title=1))
dev.off()



# Analiza IGK 

# razporeditev delnic
by_investitor <- data.frame("investitor" = c("Private investors", "Treasury shares", "Institutional investors"),
                            "share" = c(9, 2, 89))
by_region <- data.frame("region" = c("Belgium", "Germany", "Rest of world", "North America", "United Kingdom"),
                        "share" = c(8, 10, 18, 43, 21)) #samo za institutional investors

kolacnik_invest <- ggplot(by_investitor, aes(x = "", y = share, fill = investitor)) + 
  geom_bar(stat = "identity", color = "white") +
  labs(title ="Shareholder structure by \n investor group") +
  coord_polar("y") + theme_void() + scale_fill_brewer(palette="Set3") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.3))


kolacnik_region <- ggplot(by_region, aes(x = "", y = share, fill = region)) + 
  geom_bar(stat = "identity", color = "white") +
  labs(title ="Shareholder structure by region") +
  coord_polar("y") + theme_void() + scale_fill_brewer(palette="Set3") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5))

  
png("Graphs/delnice.png", height =157 , width = 300)
print(kolacnik_invest)
dev.off()

# dividende
dividende <- data.frame("time" = c(2016, 2017, 2018, 2019), 
                        "div adidas" = c(-IGK_adidas[12, 9]*1.0541, -IGK_adidas[24, 9]*1.199, -IGK_adidas[36, 9]*1.145, -IGK_adidas[44, 9]*1.1234),
                        "div puma" = c(-IGK_puma[5, 11]*1.0541, -IGK_puma[11, 11]*1.1993, -IGK_puma[19, 11]*1.145, -IGK_puma[25, 11]*1.1234),
                        "div nike" = c(821, 1159, 1265, 1360))

png("Graphs/dividende.png")
plot(dividende[, c(1, 3)], main = "Dividend payment", col = "lightskyblue", type = "l", ylim = c(26, 1380), ylab = "mio $", lwd = 2)
lines(dividende[,c(1, 2)], col = "palegreen", lwd = 2)
lines(dividende[,c(1, 4)], col = "hotpink", lwd = 2)
text(x = c(2016.3, 2017, 2016.3), y = c(150,  650, 1100), labels = c("Puma", "Adidas", "Nike"), col = c("lightskyblue", "palegreen", "hotpink"))
dev.off()