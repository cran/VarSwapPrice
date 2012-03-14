\name{VarSwapPrice-package}
\alias{VarSwapPrice-package}
\alias{VarSwapPrice}
\docType{package}
\title{
Pricing the variance swap of an equity index
}
\description{
Using mild assumptions, Demeterfi, Derman, Kamal and Zou (1999) show that there exists an exotic stock option that generates a payoff equal to the variance of the stock's returns. This payoff can then be replicated through a portfolio of European options available in the marketplace. The fair value of the variance swap is the cost of the replicating portfolio. The code presented herein computes the replicating portfolio using the analytical formulas of Demeterfi, Derman, Kamal and Zou (1999) for a theoretical fair value with volatility skews. 
}
\details{
\tabular{ll}{
Package: \tab VarSwap\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-03-14\cr
License: \tab GPL-3\cr
LazyLoad: \tab yes\cr
}
This a standard one-function thing. Therefore, it is enough to follow the instructions and call for the function the standard R-way. 
}
\author{
Maintainer: Paolo Zagaglia, paolo.zagaglia@gmail.com
}
\references{
Kresimir Demeterfi, Emanuel Derman, Michael Kamal and Joseph Zou, "More Than You Ever Wanted To Know About Volatility Swaps", Goldman Sachs Quantitative Strategies Research Notes, March 1999.
}
\keyword{ Package description }
\examples{
rm(list=ls())

S0       <- c(100) 			  #spot price
puts     <- matrix( seq(100,45,-5) )      #available put strike prices
vol_put  <- matrix( seq(0.2,0.3,0.01) )   #implied vols for puts
calls    <- matrix( seq(100,140,5) )      #available call strike prices
vol_call <- matrix( seq(0.2,0.13,-0.01) ) #implied vols for calls

r  <- c( 0.05 )   #risk free rate
T  <- c( 90/365 ) #maturity of 3 months
SQ <- c( 100 )    #strike price which is nearest to forward price

equity_varswap <- VarSwap(S0, puts, calls, vol_put, vol_call, r, T, SQ) 
}
