% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unbiased_estimators.R
\name{unbiased_gradient_increment}
\alias{unbiased_gradient_increment}
\title{Unbiased estimator of the difference of the gradient of log-likelihood at two successive discretization levels}
\usage{
unbiased_gradient_increment(
  model,
  theta,
  discretization,
  observations,
  nparticles,
  resampling_threshold,
  coupled_resampling,
  k = 0,
  m = 1,
  max_iterations = Inf
)
}
\arguments{
\item{model}{a list representing a hidden Markov model, e.g. \code{\link{hmm_ornstein_uhlenbeck}}}

\item{theta}{a vector of parameters as input to model functions}

\item{discretization}{lists containing stepsize, nsteps, statelength, obstimes for fine and coarse levels, 
and coarsetimes of length statelength_fine indexing time steps of coarse level}

\item{observations}{a matrix of observations of size nobservations x ydimension}

\item{nparticles}{number of particles}

\item{resampling_threshold}{ESS proportion below which resampling is triggered (always resample at observation times by default)}

\item{coupled_resampling}{a 4-way coupled resampling scheme, such as \code{\link{coupled4_maximal_coupled_residuals}}}

\item{k}{iteration at which to start averaging (default to 0)}

\item{m}{iteration at which to stop averaging (default to 1)}

\item{max_niterations}{iteration at which to stop the while loop (default to infinity)}
}
\value{
a list with objects such as 
mcmcestimator_coarse is the MCMC estimator of the gradient at level-1
mcmcestimator_fine is the MCMC estimator of the gradient at level
unbiasedestimator_coarse is an unbiased estimator of the gradient at level-1
unbiasedestimator_fine is an unbiased estimator of the gradient at level
mcmcestimator is the MCMC estimator of the gradient increment between the two discretization levels
unbiasedestimator is an unbiased estimator of the gradient increment between the two discretization levels
meetingtime_coarse is the meeting time of the two chains at level-1
meetingtime_fine is the meeting time of the two chains at level
iteration is the number of iterations taken
finished indicates if the algorithm has completed successfully
}
\description{
Estimates the difference of the expectation of a functional with respect to the smoothing distribution at two discretization levels
}
