GDSR_theme <- function() {
  theme_bw() + theme(
    
    # Gesamte Abbildung leicht angegrauter Hintergrund
        plot.background = element_rect(fill ="#fafafa"),
        panel.background = element_rect(fill = "#fafafa"),
        legend.background = element_rect(fill ="#fafafa"),
        
    # Schriftelemente (Farbe, Schriftart, )
    axis.text = element_text(colour = "#2A4D69", family = "Times New Roman", size=12),
    axis.title = element_text(colour = "#2A4D69", family = "Times New Roman", face = "bold", size=12),
    plot.title = element_text(colour = "#F29E4C", face="bold", family = "Comic Sans MS", size=18),
    plot.subtitle = element_text(colour = "#2A4D69", size=14, family = "Times New Roman"),
    legend.text = element_text(colour = "#2A4D69", size=12, family = "Times New Roman"),
    legend.title =  element_text(colour = "#2A4D69", size=12, family = "Times New Roman"),
    
    # Grid-Lines, Rahmen und Achsen-Ticks
    axis.ticks = element_line(colour = "#2A4D69"),
    panel.border = element_rect(colour = "#2A4D69", fill = NA, linetype = 2),
    panel.grid.major = element_line(colour = "#2A4D69", linetype = 3, size = 0.5),
    panel.grid.minor = element_blank(),
    
    # Legende platzieren
    legend.position = "top",
    legend.margin = margin(0, 0, 0, 0), # Keine Ränder für besseres Alignment mit dem Titel
    legend.justification.top = "left",
    legend.justification.left = "top", 

    # Legende und Titel am Plot ausrichten
    plot.title.position = "plot",
    legend.location = "plot",
  )
}



ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(shape = species), colour="#2A4D69") + 
  geom_smooth(method = "lm", colour="#F29E4C") + 
  labs(title = "Body mass and flipper length", 
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins", 
       x = "Flipper length (mm)", 
       y = "Body mass (g)", 
       shape = "Species") + 
  GDSR_theme()