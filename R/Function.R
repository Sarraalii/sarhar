
#' @title Odds Ratio and 95% Confidence Interval Calculation
#' @description
#'   Calculates the odds ratio (OR) and its 95% confidence interval (CI)
#'   based on the given coefficients and standard error.
#' @param coef Numeric value representing the coefficient.
#' @param se Numeric value representing the standard error.
#' @param siglevel Numeric value specifying the significance level for the CI.
#' @param roundto Integer specifying the number of decimal places to round the results to.
#' @return A character string representing the OR and its 95% CI in the format "OR (Lower CI, Upper CI)".
#' @author Sarra Ali
#' @examples
#' OR_95CI(0.5, 0.2, 0.05, 2)
#' @export
OR_95CI <- function(coef, se, siglevel, roundto){
  # Function code here
}


OR_95CI <- function(coef, se, siglevel, roundto){
  q <- 1 - siglevel / 2
  OR <- exp(coef)
  ORlcl <- exp(coef - qnorm(q) * se)
  ORucl <- exp(coef + qnorm(q) * se)
  ORresult <- paste0(format(round(OR, roundto), nsmall = roundto),
                     " (",
                     format(round(ORlcl, roundto), nsmall = roundto),
                     ", ",
                     format(round(ORucl, roundto), nsmall = roundto),
                     ")"
  )
  return(ORresult)
}












