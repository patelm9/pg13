% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{renameTable}
\alias{renameTable}
\title{Rename a table in a Postgres schema}
\usage{
renameTable(conn, schema, tableName, newTableName, ...)
}
\arguments{
\item{...}{Additional arguments passed to the DatabaseConnector::dbSendStatement function}
}
\description{
This function will rename a table in a schema, but not move it out of a schema.
}
