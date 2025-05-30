% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions2.R
\name{CalcStatsAllClusters}
\alias{CalcStatsAllClusters}
\title{Obtains the clusters with the maximum log-likelihood ratio or minimum DIC
for each center and start and end dates.}
\usage{
CalcStatsAllClusters(
  thegrid,
  CalcStatClusterGivenCenter,
  stfdf,
  rr,
  typeCluster,
  sortDates,
  idMinDateCluster,
  idMaxDateCluster,
  fractpop,
  model0,
  ClusterSizeContribution,
  numCPUS
)
}
\arguments{
\item{thegrid}{grid with the coordinates of the centers of the clusters
explored.}

\item{CalcStatClusterGivenCenter}{function to obtain the cluster with the
maximum log-likelihood ratio of all the clusters with the same center and
start and end dates}

\item{stfdf}{spatio-temporal class object containing the data.}

\item{rr}{square of the maximum radius of the cluster.}

\item{typeCluster}{type of clusters to be detected. "ST" for spatio-temporal
clusters or "S" spatial clusters.}

\item{sortDates}{sorted vector of the times where disease cases occurred.}

\item{idMinDateCluster}{index of the closest date to the start date of the
cluster in the vector sortDates}

\item{idMaxDateCluster}{index of the closest date to the end date of the
cluster in the vector sortDates}

\item{fractpop}{maximum fraction of the total population inside the cluster.}

\item{model0}{Initial model (including covariates).
This can be "glm" for generalized linear models (\link[stats]{glm}),
"glmer" for generalized linear mixed model (\link[lme4]{glmer}),
"zeroinfl" for zero-inflated models (zeroinfl), or
"inla" for generalized linear, generalized linear mixed or zero-inflated models fitted with \code{inla}.}

\item{ClusterSizeContribution}{Variable used to check the fraction of the 
population at risk in the cluster}

\item{numCPUS}{Number of cpus used when using parallel  to run the method.
If parallel is not used numCPUS is NULL.}
}
\value{
data frame with information of the clusters with the maximum
log-likelihood ratio or minimum DIC for each center and start and end dates.
It contains the coordinates of the center, the size, the start and end dates,
the log-likelihood ratio or DIC, the p-value and the risk of each of the clusters.
}
\description{
This function explores all possible clusters changing their center and start
and end dates. For each center and time periods, it obtains the cluster with
the maximum log-likelihood ratio or minimum DIC so that the maximum fraction
of the total population inside the cluster is less than fractpop, 
and the maximum distance to the center is less than radius.
}
