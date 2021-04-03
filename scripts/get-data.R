library(readr)
library(dplyr)
library(janitor)

URL <- "https://genomics.senescence.info/species/dataset.zip"

TEMPDIR <- tempdir()

DATASET_ZIP <- file.path(TEMPDIR, "dataset.zip")
DATASET_TXT <- "anage_data.txt"

if (!file.exists(DATASET_ZIP)) {
  download.file(URL, DATASET_ZIP)
}

unzip(DATASET_ZIP, files = DATASET_TXT, exdir = TEMPDIR)

DATASET_TXT <- file.path(TEMPDIR, DATASET_TXT)

anage <- read_tsv(
  DATASET_TXT,
  col_types = cols(
    .default = col_double(),
    HAGRID = col_character(),
    Kingdom = col_character(),
    Phylum = col_character(),
    Class = col_character(),
    Order = col_character(),
    Family = col_character(),
    Genus = col_character(),
    Species = col_character(),
    `Common name` = col_character(),
    `Weaning (days)` = col_integer(),
    `Weaning weight (g)` = col_number(),
    Source = col_character(),
    `Specimen origin` = col_character(),
    `Sample size` = col_character(),
    `Data quality` = col_character(),
    References = col_number()
  )
) %>%
  clean_names() %>%
  select(
    hagrid,
    kingdom,
    phylum,
    class,
    order,
    family,
    genus,
    species,
    common_name,
    female_maturity_days,
    male_maturity_days,
    gestation_incubation_days,
    weaning_days,
    litter_clutch_size,
    litters_clutches_per_year,
    inter_litter_inter_birth_interval = inter_litter_interbirth_interval,
    birth_mass_g = birth_weight_g,
    weaning_mass_g = weaning_weight_g,
    adult_mass_g = adult_weight_g,
    growth_rate_per_day = growth_rate_1_days,
    maximum_longevity_yr = maximum_longevity_yrs,
    source,
    specimen_origin,
    sample_size,
    data_quality,
    imr_per_yr,
    mrdt_yr = mrdt_yrs,
    metabolic_rate_watt = metabolic_rate_w,
    body_mass_g,
    temperature_kelvin = temperature_k
  ) %>%
  mutate_at(
    vars(kingdom:species),
    as.factor
  )

usethis::use_data(anage, overwrite = TRUE)
