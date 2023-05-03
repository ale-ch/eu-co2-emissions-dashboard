library(readr)
library(tidyverse)

PATHS <- paste0("data/", list.files("data"))

datasets <- lapply(PATHS, read_csv)

df <- map_df(datasets, rbind)

write_csv(df, "data/eu_emissions.csv")
