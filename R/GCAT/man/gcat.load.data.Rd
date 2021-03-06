% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/table2well.R
\name{gcat.load.data}
\alias{gcat.load.data}
\title{Load tabular data}
\usage{
gcat.load.data(file.name = NULL, load.type = "csv", input.data = NULL,
  single.plate.ID = NULL, plate.layout = NULL, plate.nrow = 8,
  plate.ncol = 12, input.skip.lines = 0,
  multi.column.headers = c("Plate.ID", "Well", "OD", "Time"),
  single.column.headers = c("", "A1"), layout.sheet.headers = c("Strain",
  "Media Definition"), blank.value = NULL, start.index = 2,
  single.plate = F, silent = T)
}
\arguments{
\item{file.name}{Complete path and file name of a comma-separated values (.csv) file containing growth curve data
in the multiple-plate (long) format.}

\item{load.type}{.csv by default.}

\item{input.data}{A list of tables representing input files read with \code{read.table}. Used to save time in cases
of running multiple analyses on the same dataset. If used, the function will ignore \code{file.name} entirely.}

\item{single.plate.ID}{specifies a plate name for a single-plate read.  If NULL, this is derived from the file name.}

\item{plate.layout}{Specifies the layout of the given plate.}

\item{plate.nrow}{The number of rows in the input files.}

\item{plate.ncol}{The number of columns in the input files.}

\item{input.skip.lines}{specifies a plate name for a single-plate read.  If NULL, this is derived from the file name.}

\item{multi.column.headers}{The headers of the column when analyzing multiple plates.}

\item{single.column.headers}{The headers of the column when analyzing a single plate.}

\item{layout.sheet.headers}{The headers of the layout file.}

\item{blank.value}{Blank OD measurement for uninoculated wells. By default(NULL), the value of the first OD
measurement in each well is used.}

\item{start.index}{Which timepoint should be used as the first one after inoculation?}

\item{single.plate}{Is the plate single type?}

\item{silent}{Surpress all messages.}
}
\value{
A list of well objects.
}
\description{
This function handles loading data from tabular format (.csv, tab-delimited text or R data frame object)
and returns an array of well objects, each filled with raw Time vs. OD data.
It takes single-plate or multiple-plate format data. For single-plate data,
it calls on the function \code{gcat.reorganize.single.plate.data} to rearrange the table before creating the output object.
}

