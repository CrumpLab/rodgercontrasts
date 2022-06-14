#' Rodger F critical values
#'
#' @param v1 numeric, numerator degrees of freedom
#' @param v2 numeric, denominator degrees of freedom
#' @param alpha numeric, desired E_alpha
#'
#' @return numeric, Rodger's critical F for mutually orthogonal linear contrasts
#' @export
#'
#' @examples
#' f_e_alpha(2,12,.05)
f_e_alpha <- function(v1,v2,alpha) {

  #start with critical f
  f_crit <- qf(.95,v1,v2)

  test_f <- f_crit

  for(i in 1:10000){
    E_alpha <- sum(diff(c(pf(test_f*(0:v1),v1,v2),1)) * (0:v1)) / v1
    if(round(E_alpha,digits=6) == alpha) {
      #print(i)
      break
    }
    alpha_diff <- abs(E_alpha-alpha)
    if(E_alpha < alpha) test_f <- test_f - alpha_diff
    if(E_alpha >= alpha) test_f <- test_f + alpha_diff
  }

  return(round(test_f, digits=3))

}
