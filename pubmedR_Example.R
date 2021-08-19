install.packages("usethis")
library(usethis)


install.packages("devtools")
library(devtools)


devtools::install_github("massimoaria/pubmedR")
library(pubmedR)


query <- "bibliometric*[Title/Abstract] AND english[LA]
AND Journal Article[PT] AND 2000:2020[DP]"
D <- pmApiRequest(query = query, limit = 100, api_key = NULL)
M <- pmApi2df(D)
View(M)
