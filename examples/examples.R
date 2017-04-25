
#' Get your releases
cv %>% select(-enabledBuiltInVariable, -domainName) %>%
  group_by(accountId, containerId, notes, fingerprint, notes) %>%
  filter(row_number() == 1) %>%
  knitr::kable()

