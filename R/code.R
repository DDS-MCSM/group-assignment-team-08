#' Title
#'
#' @details This are the details
#' @return
#' @export
#'
#' @examples
sample_function <- function() {
  print("Hello world")
}
a <- read.csv(url("https://ransomwaretracker.abuse.ch/feeds/csv/"), skip = 8, header = TRUE, stringsAsFactors = F, check.names = T)
mynames <- colnames(a)
mynames[1] <- "Firstseen_UTC"
colnames(a) <- mynames
mynames <- c("Firstseen_UTC","Threat","Malware","Status","Country")
data <- a[mynames]
f <- data$Firstseen_UTC
f <- as.Date(f, %Y)
c <- data$Country

> fechas <- strptime(x = head(data$Firstseen_UTC), format = "%Y-%m-%d")
> months.Date(fechas)
data$Firstseen_UTC <- format(as.Date(data$Firstseen_UTC), %Y %m %d)
> months.Date(fechas)
[1] "agosto" "agosto" "agosto" "agosto" "agosto" "agosto"
> f <- data$Country
> kk <- grep(pattern = ".*|.*", x = f)
> kk <- grep(pattern = ".*|.*", x = f, perl = F)
> kk <- grep(pattern = "|", x = f, perl = F)
> kk <- grep(pattern = "\|", x = f, perl = F)
Error: '\|' is an unrecognized escape in character string starting ""\|"
> kk <- grep(pattern = "\\|", x = f, perl = F)
> raros <- data[grep(pattern = "\\|", x = f, perl = F), ]
> no.raros <- data[!grepl(pattern = "\\|", x = f, perl = F), ]
