\name{black_scholes}
\alias{black_scholes}
\title{
Black-Scholes pricing for call and put options
}
\description{
This function computes the analytical prices of call and put options using the formulas obtained by Black and Scholes (1973). 
}
\usage{
black_scholes(S, X, r, t, vol)
}
\arguments{
  \item{S   }{spot price}
  \item{X   }{strike price}
  \item{r   }{risk-free interest rate}
  \item{t   }{time to maturity}
  \item{vol }{volatility}
}
\value{
\item{CallPrice }{price of a call option}
\item{PutPrice  }{price of a put option}
}
\references{
Fischer Black and Myron Scholes (1973), "The Pricing of Options and Corporate Liabilities", Journal of Political Economy, 81(3), 637-654.
}

\author{
Paolo Zagaglia, paolo.zagaglia@gmail.com
}

\examples{
S      <- c( 100 )
X      <- c( 70 )
r      <- c( 0.05 )
t      <- c( 50 )
vol    <- c( 0.2 )
prices <- black_scholes(S, X, r, t, vol) 
}

\keyword{ Black-Scholes option pricing }