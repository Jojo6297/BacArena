% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Stuff.R
\name{plotPhenCurve}
\alias{plotPhenCurve}
\title{Plot growth curve for several simulations}
\usage{
plotPhenCurve(
  simlist,
  subs,
  phens = NULL,
  time = c(NULL, NULL),
  cluster = TRUE,
  inAll = TRUE,
  col = colpal3,
  with_gc = FALSE,
  return_dat = FALSE
)
}
\arguments{
\item{simlist}{A list of simulations (eval objects).}

\item{subs}{A vector of substance names that are used for phenotype clustering.}

\item{phens}{If phencurve is given then phens specifies the phenotypes which sould be plotted again.}

\item{time}{Vector with two entries defining start and end time}

\item{cluster}{True if phenotypes should be clustered/condensed.}

\item{inAll}{True if only phenotypes which occur in all replicates should be considered}

\item{col}{Vector with color that should be used}

\item{with_gc}{True if growth curve of organisms should be included}

\item{return_dat}{Should data be returned? (default false)}
}
\description{
The function \code{plotPhenCurve} takes a list of simulations and plots the time course of species with standard deviation.
}
