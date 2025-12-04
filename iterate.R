


library(tidyverse)

parks <- unique(data$unit_name)


# try to outputs
purrr::map(
  .x = parks,  # vector of param values
  .f = ~rmarkdown::render(
    input = "demo_report.qmd",  # RMarkdown filepath
    params = list(unit_name = .x),  # iterated parameter value
    output_file = stringr::str_glue("output/", .x, "-report.html")  # iterated output path
  )
)
