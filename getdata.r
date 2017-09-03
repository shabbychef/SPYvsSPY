# /usr/bin/r
#
# Created: 2017.09.02
# Copyright: Steven E. Pav, 2017
# Author: Steven E. Pav <steven@gilgamath.com>
# Comments: Steven E. Pav

install.packages(c('googlesheets'))

suppressMessages({
	library(dplyr)
	library(readr)
	library(googlesheets)
})

gs_ls() 
foo <- gs_read(gs_title('SPY_vs_SPY'))

meds <- foo %>%
	rename(Mad_no=`Mad #`,
				 yrmo=`Year-Month`,
				 omnibus_page=`Omnibus Page`) %>%
	mutate(Author=gsub('^AP$','Antonio Prohias',Author),
				 Artist=gsub('^AP$','Antonio Prohias',Artist)) %>%
	mutate(white_comeuppance=grepl('W',Details)) %>%
	mutate(black_comeuppance=grepl('B',Details)) %>%
	mutate(grey_spy_appearance=grepl('G',Details)) %>%
	mutate(v_for_victory=grepl('V',Details)) %>%
	select(-Details) %>%
	rename(author=Author,artist=Artist) %>% 
	filter((author=='Antonio Prohias') | (artist=='Antonio Prohias')) %>%
	arrange(Mad_no,omnibus_page)

meds %>% readr::write_csv('data/SPY_vs_SPY.csv')

# some looksees:

library(ggplot2)

ph <- meds %>%
	mutate(net_white=cumsum(as.numeric(black_comeuppance) - as.numeric(white_comeuppance))) %>%
	mutate(snapdate=zoo::as.yearmon(yrmo)) %>%
	ggplot(aes(snapdate,net_white)) + 
		geom_line() +
		labs(y='net white victories')

print(ph) 

ph <- meds %>%
	group_by(yrmo) %>%
		summarize(net_white=sum(as.numeric(black_comeuppance) - as.numeric(white_comeuppance))) %>%
		ungroup() %>%
	mutate(net_white=cumsum(net_white)) %>%
	mutate(snapdate=zoo::as.yearmon(yrmo)) %>%
	ggplot(aes(snapdate,net_white)) + 
		geom_line() +
		labs(y='net white victories')


foodata <- meds %>%
	group_by(yrmo) %>%
		summarize(nper=n(),
							net_white=sum(as.numeric(black_comeuppance) - as.numeric(white_comeuppance))) %>%
		ungroup() %>%
	filter(nper==1) %>%
	mutate(net_white=cumsum(net_white)) %>%
	mutate(snapdate=zoo::as.yearmon(yrmo)) %>%
	ggplot(aes(snapdate,net_white)) + 
		geom_line() +
		labs(y='net white victories')

wwdata <- meds %>%
	group_by(yrmo) %>%
		summarize(nper=n(),
							white_victory=sum(as.numeric(black_comeuppance) - as.numeric(white_comeuppance))) %>%
		ungroup() %>%
	filter(nper==1) %>%
	mutate(snapdate=zoo::as.yearmon(yrmo)) %>%
	arrange(snapdate)


ph <- meds %>%
	mutate(snapdate=zoo::as.yearmon(yrmo)) %>%
	ggplot(aes(snapdate,v_for_victory)) + 
	geom_point() + geom_line() + 
	labs(y='v for victory?')
print(ph)
	ggplot(aes
library(randtests)

runs.test(wwdata$white_victory,threshold=0)

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r
