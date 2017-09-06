# /usr/bin/r
#
# Created: 2017.09.05
# Copyright: Steven E. Pav, 2017
# Author: Steven E. Pav <steven@gilgamath.com>
# Comments: Steven E. Pav

library(readr)

svs <- readr::read_csv('data-raw/svs.csv',
											 col_types=cols(Mad_no = col_double(),
																			yrmo = col_character(),
																			omnibus_page = col_integer(),
																			author = col_character(),
																			artist = col_character(),
																			white_comeuppance = col_logical(),
																			black_comeuppance = col_logical(),
																			grey_spy_appearance = col_logical(),
																			v_for_victory = col_logical()))

devtools::use_data(svs,overwrite=TRUE)

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r
