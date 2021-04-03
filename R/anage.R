#' AnAge Database of Animal Ageing and Longevity
#'
#' A curated database of ageing and life history in animals, including extensive longevity records.
#'
#' @docType data
#'
#' @format A data frame with the following columns variables:
#' \describe{
#'   \item{hagrid}{The \href{https://genomics.senescence.info/}{Human Ageing Genomic Resources} ID (HAGRID).}
#' The following columns specify levels in the \href{https://en.wikipedia.org/wiki/Taxonomic_rank}{taxonomic rank}:
#'   \item{kingdom}{;}
#'   \item{phylum}{;}
#'   \item{class}{;}
#'   \item{order}{;}
#'   \item{family}{;}
#'   \item{genus}{;}
#'   \item{species}{;}
#' These columns give information on characteristics of a specific species:
#'   \item{common_name}{;}
#'   \item{female_maturity_days}{;}
#'   \item{male_maturity_days}{;}
#'   \item{gestation_incubation_days}{;}
#'   \item{weaning_days}{;}
#'   \item{litter_clutch_size}{;}
#'   \item{litters_clutches_per_year}{;}
#'   \item{inter_litter_inter_birth_interval}{;}
#'   \item{birth_mass_g}{;}
#'   \item{weaning_mass_g}{;}
#'   \item{adult_mass_g}{;}
#'   \item{growth_rate_per_day}{;}
#'   \item{maximum_longevity_yr}{;}
#'   \item{source}{;}
#'   \item{specimen_origin}{;}
#'   \item{sample_size}{;}
#'   \item{data_quality}{;}
#'   \item{imr_per_yr}{;}
#'   \item{mrdt_yr}{;}
#'   \item{metabolic_rate_watt}{;}
#'   \item{body_mass_g}{;}
#'   \item{temperature_kelvin}{.}
#' }
#'
#' @source
#' These data were downloaded from \url{https://genomics.senescence.info/species/index.html}.
"anage"

## usethis namespace: start
#' @importFrom tibble tibble
## usethis namespace: end
NULL
