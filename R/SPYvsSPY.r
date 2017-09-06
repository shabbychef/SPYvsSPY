#
# This file is part of SPYvsSPY.
#
# SPYvsSPY is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

# Created: 2017.09.04
# Copyright: Steven E. Pav, 2017
# Author: Steven E. Pav <steven@gilgamath.com>
# Comments: Steven E. Pav

#' @title Spy vs. Spy Data
#' @description Historical data of Spy vs. Spy comic strip written by Antonio Prohias:
#' issue number, date, outcome, and others.
#' @usage data(svs)
#' @format A \code{data.frame} object with 248 observations and 9 columns. 
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{Mad_no}}{The issue number of Mad Magazine. Typically these are
#'  integers, but two non-integral pseudo issue numbers were created for the 
#'  \dQuote{Mad Super Special #19} (appearing as 185.5) and \dQuote{Mad '84} (appearing as
#'  250.5).}
#'  \item{\code{yrmo}}{A character of the year and month of publication, given in the format
#'  \code{\%Y-\%m}. The data run from January, 1961 through July, 1994.}
#'  \item{\code{omnibus_page}}{The page the strip appears in the Spy vs. Spy
#'  Omnibus.}
#'  \item{\code{author}}{The listed author of the strip. This takes only one value, \sQuote{Antonio Prohias}.}
#'  \item{\code{artist}}{The listed artist of the strip. This is mostly \sQuote{Antonio Prohias}, but later
#'  strips with \sQuote{Bob Clarke} and \sQuote{David Manak} also appear.}
#'  \item{\code{white_comeuppance}}{Whether the White Spy received a
#'  \sQuote{comeuppance} in the strip. This varies from full-on bombing to losing plans to the Black Spy. 
#'  In some strips, both Spies may be injured, with one Spy receiving a substantially greater injury; in
#'  that case, the latter Spy is listed as receiving comeuppance.}
#'  \item{\code{black_comeuppance}}{Whether the Black Spy received a
#'  \sQuote{comeuppance} in the strip.}
#'  \item{\code{grey_spy_appearance}}{Whether the Grey Spy appeared in the
#'  strip. In cases when she does, both the White and Black spy receive a
#'  comeuppance.}
#'  \item{\code{v_for_victory}}{Whether the victorious spy flashes the
#'  \sQuote{v for victory} sign, common in the later strips.}
#' }
#' @source 
#' Data were collated by the package author by analyzing the "Spy vs. Spy
#' Omnibus", Mad Books, 2011, ISBN 978-1-4012-3237-5. 
#' Any errors in transcription are the fault of the package author. 
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @note This package is in no way endorsed by Mad Magazine. Spy vs. Spy
#' remains the copyright property of Antonio Prohias, the Prohias Estate, 
#' Mad Magazine, Mad Books, basically anybody but the package author.
#' @name svs
#' @rdname svs
#' @docType data
#' @keywords data
#' @examples
#' data(svs)
#' str(svs)
"svs"

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r
