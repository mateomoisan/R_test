#*****************************************************************************#
#  [reg table]                                                                #
#                                                                             #
#  Description: Create a function to format the regression results                             #
#                                                                             #
#*****************************************************************************#

tab.complet <- function(model, summary, digits = 0){
  
  tmp <- tidy(model)
  
  tmp %<>%
    mutate(stars = if_else(p.value < 0.01, 
                           "***",
                           if_else(p.value < .05,
                                   "**",
                                   if_else(p.value <0.1,
                                           "*",
                                           "")))) %>%
    select(term, 
           estimate, 
           stars, 
           std.error, 
           statistic, 
           p.value) %>%
    mutate(estimate = round(estimate, digits),
           std.error = paste0(" (", round(std.error, digits), ")"),
           statistic = round(statistic, 2),
           p.value = round(p.value, 3)) %>%
    bind_rows(data.frame(term = c("Observations", 
                                  "R2", 
                                  "Adjusted R2"), 
                         estimate = c(length(summary$residuals), 
                                      round(as.numeric(summary$r.squared), 2), 
                                      round(as.numeric(summary$adj.r.squared), 2))))
  
  return(tmp)
  
}
