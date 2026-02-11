### 矩阵操作
#creating matrix from vectors
stock1 <- c(450,451,452,445,468)
stock2 <- c(230,231,232,236,238)
stocks <- c(stock1, stock2) #Merge both the vectors
stocks
stock.matrix <- matrix(stocks, byrow=TRUE, nrow=2)

days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('stock','stock2')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix

#Functions associated with matrix

nrow(stock.matrix) #returns no. of rows
ncol(stock.matrix) #returns no.of columns
dim(stock.matrix) #returns row names
rownames(stock.matrix) #returns column names
dimnames(stock.matrix) #returns row and column names

### tidyr data manipulation
# Summarize() slice(dataset, 1:5) 这个很有用先看一眼任意行列
# wide%>%gather 方程一起用

### Plotting
# library(ggplot2)
# head(mpg, n=10)
# str(mpg)
# install.packages("tidyverse")
# library(tidyverse)
# ggplot(mpg) + geom_bar(aes(x=class))
