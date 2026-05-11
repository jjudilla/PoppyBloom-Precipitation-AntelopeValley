setwd('C:\\Users\\joshu\\OneDrive\\Documents\\CLASSES\\Spring2026\\project')

lagTime <- c(71,53,84,63)
meanMaxTemp <- c(13.56104167,12.46122222,11.13183529,11.0022381)
meanSoilMoisture <-c(0.179589744,0.194178571,0.179617647,0.187916667)
sumThreeDayPpt <- c(62.551,112.518,115.641,95.991)
meanPPT <- c(2.697694444,
             4.636333333,
             2.818788235,
             3.92475)






dfMaxTemp<- data.frame(
  lagTime,
  meanMaxTemp
)

dfSoilMoisture<- data.frame(
  lagTime,
  meanSoilMoisture
  
)
df3DayPPT<- data.frame(
  lagTime,
  sumThreeDayPpt
)

dfMeanPPT<- data.frame(
  lagTime,
  meanPPT
)
print(df)
modelMaxTemp <- lm(lagTime ~ meanMaxTemp, data = dfMaxTemp) 
summary(modelMaxTemp)

modelSoilMoisture <- lm(lagTime ~ meanSoilMoisture, data = dfSoilMoisture) 
summary(modelSoilMoisture)

#model3DayPPT <- lm(lagTime ~ sumThreeDayPpt, data = df3DayPPT) 
#summary(model3DayPPT)

modelMeanPPT <- lm(lagTime ~ meanPPT, data = df3DayPPT) 
summary(modelMeanPPT)

