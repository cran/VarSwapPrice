\name{VarSwap}
\alias{VarSwap}

\title{
Pricing a variance swap of an equity index
}

\description{
This routine prices a swap contract on the realized variance of the daily returns for an equity index. The code computes the portfolio of European-style put and call options used for calculating the cost of capturing realized variance in the presence of implied volatility skew with a discrete set of options strikes. The pricing method used in the code is proposed by Demeterfi, Derman, Kamal and Zou (1999). 
}

\usage{
VarSwap(S, puts, calls, vol_put, vol_call, r, T, SQ)
}

\arguments{
\item{S}{
spot price
}
\item{puts}{
vector of available put strike price
}
\item{calls}{
vector of available call strike price
}
\item{vol_put}{
vector of implied volatilities for put contracts
}
\item{vol_call}{
vector of implied volatilities for call contracts
}
\item{r}{
risk-free interest rate
}
\item{T}{
time to maturity
}
\item{SQ}{
strike price that is nearest to forward price
}
}
\details{
Variance swaps forward contracts on future realised variance. They can be used to speculate on future variance levels or to hedge the variance exposure of other positions. Demeterfi, Derman, Kamal and Zou (1999) show that variance swaps can be theoretically replicated by a portfolio of standard options with suitably chosen strikes. The basic assumption is that the underlying stock index has no jumps. The fair value of the variance swap is the cost of the replicating portfolio. Demeterfi, Derman, Kamal and Zou (1999) obtain analytical formulas for a theoretical fair value with volatility skews. 
}
\value{
\item{fairvol       }{analytical estimate of fair volatility}
\item{fairprice     }{fair rate for variance swap, obtained from equation (27) of Demeterfi, Derman, Kamal and Zou (1999)}
\item{total_cost    }{total weighted cost of portfolio of European options replicating the theoretical variance swap}
\item{puts_strikes  }{strike prices of (discretely-sampled) put options available in the market}
\item{puts_vols     }{implied volatility of each put option available in the market (multiplied by 100)}
\item{puts_weight   }{weights of each put option contract in the replication strategy (multiplied by 10000)}
\item{puts_vpo      }{value of each put option contract}
\item{puts_cont     }{contribution of each put option strike level to the total cost of the replicating portfolio (multiplied by 10000)}
\item{calls_strikes }{strike prices of (discretely-sampled) call options available in the market}
\item{cals_vols     }{implied volatility of each put option available in the market (multiplied by 100)}
\item{calls_weight  }{weights of each call option contract in the replication strategy (multiplied by 10000)}
\item{calls_vpo     }{value of each put option contract}
\item{calls_cont    }{contribution of each call option strike level to the total cost of the replicating portfolio (multiplied by 10000)}
}
\references{
Kresimir Demeterfi, Emanuel Derman, Michael Kamal and Joseph Zou, "More Than You Ever Wanted To Know About Volatility Swaps", Goldman Sachs Quantitative Strategies Research Notes, March 1999.
}
\author{
Paolo Zagaglia, paolo.zagaglia@gmail.com
}



\examples{

rm(list=ls())

S        <- c(100) 			  #spot price
puts     <- matrix( seq(100,45,-5) )      #available put strike prices
vol_put  <- matrix( seq(0.2,0.3,0.01) )   #implied vols for puts
calls    <- matrix( seq(100,140,5) )      #available call strike prices
vol_call <- matrix( seq(0.2,0.13,-0.01) ) #implied vols for calls

r  <- c( 0.05 )   #risk free rate
T  <- c( 90/365 ) #maturity of 3 months
SQ <- c( 100 )    #strike price which is nearest to forward price

equity_varswap <- VarSwap(S, puts, calls, vol_put, vol_call, r, T, SQ) 

}

\keyword{ Variance swap pricing function }

