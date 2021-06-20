library(tidyverse)
library(stats)

load('data/heart_data.RDa')

str(heart)

# How many are deceased?
table(heart$DEATH_EVENT)

# Status vs. Age
ggplot(heart, aes(x = age, 
                      color = factor(DEATH_EVENT)))+
  geom_density()+
  labs(x = 'Age (years)', y = 'Probability', color = 'Deceased?')+
  theme_bw()+theme(legend.position = c(0.9,0.9), 
                   legend.justification = c(1,1),
                   legend.background = element_blank(),
                   panel.grid = element_blank())

# Status vs. Anaemia
xtabs(~ anaemia + DEATH_EVENT, heart)
