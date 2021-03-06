% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cookies.R, R/cookiesDoc.R
\name{getAllCookies}
\alias{getAllCookies}
\title{Get all current domain cookies}
\usage{
getAllCookies(remDr, ...)
}
\arguments{
\item{remDr}{An object of class "rDriver". A remote driver object see \code{\link{remoteDr}}.}

\item{...}{Additonal function arguments - Currently passes the \code{\link{retry}} argument.}
}
\value{
A list of all the cookies on the current domain are returned. These cookies
have values as stipulated by the arguments given in \code{\link{addCookie}}.
}
\description{
\code{getAllCookies} Get all the cookies for the current domain.
}
\examples{
\dontrun{
# assume a server is running at default location
remDr <- remoteDr()
remDr \%>\% go("https://www.google.com/ncr") \%>\%
  getTitle()
# get the cookies
remDr \%>\% getCookie()
# get a named cookie
remDr \%>\% getCookie("NID")
# add our own cookie
remDr \%>\% addCookie(name = "myCookie", value = "12")
# check its value
remDr \%>\% getCookie("myCookie")
# delete our cookie
remDr \%>\% deleteCookie("myCookie")
# check its deleted
remDr \%>\% getCookie("myCookie")

# delete all cookies
remDr \%>\% getCookie()
remDr \%>\% deleteAllCookies() \%>\%
  getCookie()

remDr \%>\% deleteSession()
}
}
\seealso{
Other cookies functions: \code{\link{addCookie}},
  \code{\link{deleteAllCookies}},
  \code{\link{deleteCookie}}, \code{\link{getNamedCookie}}
}

