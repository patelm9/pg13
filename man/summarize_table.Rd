% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\name{summarize_table}
\alias{summarize_table}
\title{Summarize all Fields in a Table}
\usage{
summarize_table(
  conn,
  conn_fun,
  schema,
  table,
  verbose = TRUE,
  render_sql = TRUE,
  render_only = FALSE,
  warn_no_rows = TRUE,
  ...
)
}
\description{
\code{\link{summarize_field}} gets the total rows, distinct value count, valueset, and null counts for a single field in a table. To get the summary of more than 1 field, see \code{\link{summarize_fields}}. To summarize an entire table or schema without hand-selecting fields, see \code{\link{summarize_table}} and \code{\link{summarize_schema}} respectively.
}
\examples{
library(pg13)
create_test_schema <-
        function(conn) {

                if (!schema_exists(conn = conn,
                                   schema = "test_schema")) {

                        cli::cli_rule("Create 'test_schema' Schema")

                        create_schema(conn = conn,
                                      schema = "test_schema")

                }
        }


conn <- local_connect(dbname = "pg13_test")
create_test_schema(conn = conn)
write_table(conn = conn,
            schema = "test_schema",
            table_name = "test_table",
            drop_existing = TRUE,
            data = data.frame(A = 1:3, B = letters[1:3]))

write_table(conn = conn,
            schema = "test_schema",
            table_name = "test_table2",
            drop_existing = TRUE,
            data = data.frame(C = rep(NA, 3), D = c(TRUE, FALSE, FALSE)))

write_table(conn = conn,
            schema = "test_schema",
            table_name = "test_table3",
            drop_existing = TRUE,
            data = data.frame(E = c(1.25, 343.31341, 5),
                              G = c(Sys.Date(), Sys.Date()-100, Sys.Date()-1000)))

summarize_fields(conn = conn, schema = "test_schema", table = "test_table", fields = c("A", "B"))

# Case is ignored
summarize_fields(conn = conn, schema = "test_schema", table = "test_table", fields = c("a", "b"))
summarize_fields(conn = conn, schema = "test_schema", table = "test_table2", fields = c("c", "D"))


# To summarize an entire table (all the fields without manually inputting them)
summarize_table(conn = conn, schema = "test_schema", table = "test_table3")

# An entire schema can also be summarized
summarize_schema(conn = conn, schema = "test_schema")


drop_schema(conn = conn,
            schema = "test_schema",
            cascade = TRUE)

dc(conn = conn)
}
\seealso{
Other summary functions: 
\code{\link{summarize_fields}()},
\code{\link{summarize_field}()},
\code{\link{summarize_schema}()}
}
\concept{summary functions}
