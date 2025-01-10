library(palmerpenguins)
library(ggplot2) # Alternativ könnten wir auch das Meta Paket tidyverse einbinden.
library(ggthemes)

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species, shape = species)) + 
  geom_smooth(method = "lm") + 
  labs(title = "Body mass and flipper length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins", 
       x = "Flipper length (mm)", 
       y = "Body mass (g)", 
       color = "Species", 
       shape = "Species") + 
  theme_bw() +
  theme(plot.title = element_text(colour = "red", family="Comic Sans MS"),
        plot.subtitle = element_text(colour = "blue", face="bold"),
        plot.title.position = "plot",
        axis.title = element_text(colour = "blue"),
        axis.text = element_text(colour = "purple"),
        legend.position = "top",
        legend.location = "plot",
        legend.margin = margin(0, 0, 0, 0), # turned off for alignment
        legend.justification.top = "left",
        legend.justification.left = "top",
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border=element_blank(),
        axis.line.x = element_line(colour = "lightgray"),
        axis.line.y = element_line(colour = "lightgray")
  )


Daniels_theme <- function() {
  theme_bw() +
    theme(plot.title = element_text(colour = "red", family="Comic Sans MS"),
          plot.subtitle = element_text(colour = "blue", face="bold"),
          plot.title.position = "plot",
          axis.title = element_text(colour = "blue"),
          axis.text = element_text(colour = "purple"),
          legend.position = "top",
          legend.location = "plot",
          legend.margin = margin(0, 0, 0, 0), # turned off for alignment
          legend.justification.top = "left",
          legend.justification.left = "top",
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border=element_blank(),
          axis.line.x = element_line(colour = "lightgray"),
          axis.line.y = element_line(colour = "lightgray")
    )
}

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species, shape = species)) + 
  geom_smooth(method = "lm") + 
  labs(title = "Body mass and flipper length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins", 
       x = "Flipper length (mm)", 
       y = "Body mass (g)", 
       color = "Species", 
       shape = "Species") +
  Daniels_theme()

