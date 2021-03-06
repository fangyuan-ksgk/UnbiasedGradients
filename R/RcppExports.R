# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

multinomial_resampling <- function(weights, ndraws, rand) {
    .Call('_UnbiasedGradients_multinomial_resampling', PACKAGE = 'UnbiasedGradients', weights, ndraws, rand)
}

maximal_rejection_sampling <- function(ancestors1, weights1, weights2) {
    .Call('_UnbiasedGradients_maximal_rejection_sampling', PACKAGE = 'UnbiasedGradients', ancestors1, weights1, weights2)
}

maximal_maximal_multinomial_resampling <- function(weights1, weights2, weights3, weights4, ndraws, residualtype) {
    .Call('_UnbiasedGradients_maximal_maximal_multinomial_resampling', PACKAGE = 'UnbiasedGradients', weights1, weights2, weights3, weights4, ndraws, residualtype)
}

