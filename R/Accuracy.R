#' @name    Accuracy
#' @aliases Accuracy
#' @title Extract the accuracy measures from group testing results
#' @description Extract the accuracy measures from objects of class "opchar" returned by
#' \code{\link{operatingCharacteristics1}} (\kbd{opChar1}) or
#' \code{\link{operatingCharacteristics2}} (\kbd{opChar2}).
#'
#' The \kbd{Accuracy} function gives the individual accuracy measures for each
#' individual in \kbd{object} and the overall accuracy measures for the
#' algorithm. If \kbd{individual=TRUE}, individual accuracy measures are
#' provided for each individual specified in the \code{a} argument of the call
#' to \code{\link{operatingCharacteristics1}} (\kbd{opChar1}) or
#' \code{\link{operatingCharacteristics2}} (\kbd{opChar2}).
#'
#' Accuracy measures included are the pooling sensitivity, pooling specificity,
#' pooling positive predictive value, and pooling negative predictive value.
#' The overall accuracy measures displayed are weighted averages of the
#' corresponding individual accuracy measures for all individuals in the
#' algorithm. Expressions for these averages are provided in the Supplementary
#' Material for Hitt et al. (2019). For more information, see the Details'
#' section for the \code{\link{operatingCharacteristics1}} (\kbd{opChar1}) or
#' \code{\link{operatingCharacteristics2}} (\kbd{opChar2}) function.
#'
#' The rows in the matrices of individual accuracy measures correspond to each
#' unique set of accuracy measures in the algorithm. Individuals with the same
#' set of accuracy measures are displayed together in a single row of the
#' matrix. The columns correspond to the pooling sensitivity, pooling
#' specificity, pooling positive predictive value, pooling negative predictive
#' value, and the indices for the individuals in each row of the matrix.
#' Individual accuracy measures are provided only if \kbd{individual=TRUE}.
#'
#' @param object An object of class "opChar", from which the accuracy measures are to be extracted.
#' @param individual A logical argument that determines whether the accuracy measures for each individual (\kbd{individual=TRUE}) are to be included.
#' @param ... Additional arguments to be passed to \code{Accuracy} (e.g.,
#' \code{digits} to be passed to \code{round} or \code{signif} for appropriate
#' rounding).
#' @return A list containing: \item{Individual}{matrix detailing the accuracy
#' measures for each individual from \kbd{object} (for objects returned by
#' \code{\link{opChar1}}).} \item{Disease 1 Individual}{matrix detailing the
#' accuracy measures pertaining to disease 1 for each individual from
#' \kbd{object} (for objects returned by \code{\link{opChar2}}).} \item{Disease
#' 2 Individual}{matrix detailing the accuracy measures pertaining to disease 2
#' for each individual from \kbd{object} (for objects returned by
#' \code{\link{opChar2}}).} \item{Overall}{matrix detailing the overall
#' accuracy measures for the algorithm from \kbd{object}.}
#' @author Brianna D. Hitt
#' @examples
#'
#' config.mat <- matrix(data = c(rep(1, 10), 1:10),
#'                      nrow = 2, ncol = 10, byrow = TRUE)
#' res1 <- opChar1(algorithm = "D2", p = 0.05, Se = 0.99, Sp = 0.99,
#'         hier.config = config.mat)
#' Accuracy(res1, individual = FALSE)
#' Accuracy(res1, individual = TRUE)
#'
#' res2 <- opChar2(algorithm = "A2M",
#'                 p.vec = c(0.92, 0.05, 0.02, 0.01),
#'                 Se = rep(0.95, 2), Sp = rep(0.99, 2),
#'                 rowcol.sz = 8)
#' Accuracy(res2)
#'

Accuracy <-
  function (object, individual = TRUE, ...) {
    UseMethod("Accuracy")
    }
#' @export
#' @rdname Accuracy

supmz.default <-
  function (object, individual = TRUE, ...)
{
    args <- list(...)
    if (is.null(args$digits)) {
        digits <- 4
    }
    else {
        digits <- args$digits
    }
    if (isFALSE(individual)) {
        list(Overall = signif(object$Accuracy$Overall, digits))
    }
    else {
        if (length(object$Accuracy) > 2) {
            dis1 <- object$Accuracy$"Disease 1 Individual"
            dis2 <- object$Accuracy$"Disease 2 Individual"
            list(`Disease 1 Individual` = data.frame(PSe = format(round(dis1[,
                1], digits), nsmall = digits), PSp = format(round(dis1[,
                2], digits), nsmall = digits), PPPV = format(round(dis1[,
                3], digits), nsmall = digits), PNPV = format(round(dis1[,
                4], digits), nsmall = digits), individuals = dis1[,
                5]), `Disease 2 Individual` = data.frame(PSe = format(round(dis2[,
                1], digits), nsmall = digits), PSp = format(round(dis2[,
                2], digits), nsmall = digits), PPPV = format(round(dis2[,
                3], digits), nsmall = digits), PNPV = format(round(dis2[,
                4], digits), nsmall = digits), individuals = dis2[,
                5]), Overall = signif(object$Accuracy$Overall,
                digits))
        }
        else {
            res <- object$Accuracy$Individual
            list(Individual = data.frame(PSe = format(round(res[,
                1], digits), nsmall = digits), PSp = format(round(res[,
                2], digits), nsmall = digits), PPPV = format(round(res[,
                3], digits), nsmall = digits), PNPV = format(round(res[,
                4], digits), nsmall = digits), individuals = res[,
                5]), Overall = signif(object$Accuracy$Overall,
                digits))
        }
    }
}
