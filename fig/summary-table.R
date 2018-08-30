library(dplyr)
cgdpheno3 <- read.csv(file = "../data/CGDpheno3.csv", stringsAsFactors = FALSE)
cc_founder_phenos <- cgdpheno3 %>%
  filter(strain %in% c("A/J", "C57BL/6J", "129S1/SvImJ", "NOD/ShiLtJ",
                       "NZO/HlLtJ", "CAST/EiJ", "PWK/PhJ", "WSB/EiJ"))
cc_founder_phenos %>% group_by(strain) %>% 
  summarize(n(), mean(TG), sd(TG))
