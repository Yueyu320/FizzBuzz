library(magrittr)

parsermd::parse_rmd("hw1.Rmd") %>% 
  parsermd::as_tibble() %>% 
  dplyr::filter(type != "rmd_heading", type != "rmd_yaml_list") %>% 
  parsermd::rmd_select(!parsermd::has_label("throws_error")) %>%
  parsermd::rmd_template(keep_content = TRUE) %>%
  saveRDS(here::here(".github/workflows/template.rds"))
