% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/shinyga_fetchdata.R
\name{shinygaGetProfiles}
\alias{shinygaGetProfiles}
\title{Get GA View data}
\usage{
shinygaGetProfiles(token, accountId = "~all", webPropertyId = "~all",
  start = 1, max = 1000)
}
\arguments{
\item{token}{Token passed from shinygaGetToken()}

\item{accountId}{AccountId of webproperty, or all of them with ~all}

\item{webPropertyId}{webPropertyId, or all of them with ~all}

\item{start}{which data point to start from}

\item{max}{Maximum number to fetch}
}
\value{
If token exists, a dataframe of GA profiles.
}
\description{
Gets the Views (Profiles) available from the user token.  Need the ViewId to fetch GA data.
}
\examples{
\dontrun{
Views <- shinygaGetProfiles(123456)
}
}
\seealso{
Other fetch data functions: \code{\link{MEgetData}};
  \code{\link{getAndMergeGAAccounts}};
  \code{\link{processManagementData}};
  \code{\link{rollupGA}}; \code{\link{shinygaGetAccounts}};
  \code{\link{shinygaGetAdWords}};
  \code{\link{shinygaGetCustomDataSources}};
  \code{\link{shinygaGetCustomDimensions}};
  \code{\link{shinygaGetCustomMetrics}};
  \code{\link{shinygaGetFilters}};
  \code{\link{shinygaGetGoals}};
  \code{\link{shinygaGetSegments}};
  \code{\link{shinygaGetUsers}};
  \code{\link{shinygaGetWebProperties}}
}

