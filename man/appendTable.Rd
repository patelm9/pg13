% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{appendTable}
\alias{appendTable}
\title{Append a Table}
\usage{
appendTable(
  conn,
  conn_fun,
  schema,
  tableName,
  data,
  verbose = TRUE,
  render_sql = TRUE,
  ...
)
}
\arguments{
\item{conn}{Connection object}

\item{schema}{The target schema for the operation.}

\item{tableName}{The target table in the \code{schema} for an operation or for writing functions, the name of the table that will be created.}

\item{data}{A dataframe or tibble.}

\item{verbose}{If TRUE, details on the activity are returned in the console, such as when the querying starting and was completed.}

\item{render_sql}{If TRUE, the SQL statement for the operation is returned in the console.}

\item{...}{Additional arguments passed to \code{DatabaseConnector::dbAppendTable()}}
}
\description{
Like the writeTable function, this function is a wrapper around a DatabaseConnector function rather than one where a SQL statement is rendered using the SqlRender package. This function performs the additional step of converting all inputs to the data.frame class, especially in cases where the input is a tibble.
}
\seealso{
Other table functions: 
\code{\link{append_table}()},
\code{\link{create_table_from_df}()},
\code{\link{create_table}()},
\code{\link{drop_all_staging_tables}()},
\code{\link{drop_table_batch}()},
\code{\link{drop_table}()},
\code{\link{read_table}()},
\code{\link{searchTable}()},
\code{\link{search_table}()},
\code{\link{write_staging_table}()},
\code{\link{write_table}()}
}
\concept{table functions}
