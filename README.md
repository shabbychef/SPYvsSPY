

# SPYvsSPY

[![Build Status](https://travis-ci.org/shabbychef/SPYvsSPY.png)](https://travis-ci.org/shabbychef/SPYvsSPY)

<img src="tools/figure/spyplot-1.png" title="plot of chunk spyplot" alt="plot of chunk spyplot" width="600px" height="500px" />

  _Joke and Data_

Data on the 248 installments of the Spy vs Spy comic by Antonio Prohias
appearing in Mad Magazine: date, issue number, outcome, appearance of
Grey Spy, V for Victory. Not affiliated or endorsed by the Estate of
Antonio Prohias or Mad Magazine, a fan-curated dataset for the promotion
of Spy vs Spy scholarship.

-- Steven E. Pav, shabbychef@gmail.com

## Installation

This package can be installed 
via [drat](https://github.com/eddelbuettel/drat "drat"), or
from github:


```r
# via drat:
if (require(drat)) {
  drat:::add("shabbychef")
  install.packages("SPYvsSPY")
}
# get snapshot from github:
if (require(devtools)) {
  install_github('shabbychef/SPYvsSPY')
}
```

## Use it


```r
library(dplyr)
library(SPYvsSPY)
# this is it:
data(svs)

svs %>% 
  mutate(yrno=lubridate::year(as.Date(paste0(yrmo,'-01'),format='%Y-%m-%d'))) %>%
  mutate(decade=10 * floor(yrno / 10)) %>% 
  group_by(decade) %>%
  summarize(num_strips=n(),
            black_net_victory=sum(as.numeric(white_comeuppance) - as.numeric(black_comeuppance))) %>%
  ungroup() %>%
  kable()
```



| decade| num_strips| black_net_victory|
|------:|----------:|-----------------:|
|   1960|        128|                -2|
|   1970|         69|                -9|
|   1980|         46|                 6|
|   1990|          5|                -1|
