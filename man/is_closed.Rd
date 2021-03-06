% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{is_closed}
\alias{is_closed}
\title{Is the Connection Closed?}
\usage{
is_closed(conn)
}
\arguments{
\item{conn}{Postgres connection object}
}
\value{
TRUE if the connection is closed and FALSE invisibly if it is open.
}
\description{
This function checks if a connection object is closed.
}
