#datos

df <- data.frame(uno=sample(
  c('home-end',"home-search-end" ,
    "home-search-product-end",
    "home-search-product-product-end",
    "home-search-product-product-end",
    "home-search-account-product-product-end",
    "body-search-product-end" ,
    "home-product-account-search-other-end" ,
    "home-search-product-end" ), size = 100,replace = T))

library(dplyr)
df <- df %>% group_by(uno) %>% dplyr::mutate(n=n())
df$n  <- df$n / sum(df$n)
df
write.csv(df, file='visit-sequences.csv', row.names=F)
