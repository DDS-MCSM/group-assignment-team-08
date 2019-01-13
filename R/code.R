#' Title
#'
#' @details This are the details
#' @return
#' @export
#'
#' @examples


if (!require(rworldmap)) install.packages('rworldmap')
if (!require(ggmap)) install.packages('ggmap')
library(ggmap)
library(rworldmap)

obtenerDf <- function(){
  a <- read.csv(url("https://ransomwaretracker.abuse.ch/feeds/csv/"), skip = 8, header = TRUE, stringsAsFactors = F, check.names = T)
  mynames <- colnames(a)
  mynames[1] <- "Firstseen_UTC"
  colnames(a) <- mynames
  mynames <- c("Firstseen_UTC","Threat","Malware","Status","Country")
  data <- a[mynames]
  data$Firstseen_UTC <- format(as.Date(data$Firstseen_UTC), "%Y-%m-%d")
  data$Firstseen_UTC <- as.Date(data$Firstseen_UTC)
  
  CiudadesRaras <- data[grep(pattern = "\\|", x = data$Country, perl = F), ]
  dataFinal <- data[!grepl(pattern = "\\|", x = data$Country, perl = F), ]
  
  dataFinal <- dataFinal[!apply(dataFinal, 1, function(x) any(x=="")),]
  dataFinal <- dataFinal[!is.na(dataFinal$Firstseen_UTC),]
  
  return(dataFinal)
}
