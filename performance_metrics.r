
#' Performance Metric: Ranked Probability Score
#'
#' @param probs vector of 3, predicted probabilities
#' @param outcomes vector of 3, binary outcomes, should be provided with the same order as probs
#' @export
#' @examples
RPS<- function(probs,outcomes){
  probs = cumsum(probs)
  outcomes = cumsum(outcomes)
  RPS = sum((probs-outcomes )^2)
  return(RPS)
}
