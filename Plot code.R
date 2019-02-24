heavy_metal <-
    heavymetal %>% mutate(playlist = "Heavy Metal") %>%
      bind_rows(amo %>% mutate(playlist = "amo"))

... %>%
    ggplot(aes(x = valence, y = energy, size = tempo, color = mode))+
        geom_point(alpha = 0.5) +
        geom_rug(size = 0.1) +
        scale_x_continuous(limits = c(0, 1),breaks = c(0, 0.50, 1),minor_breaks = NULL) +    
        scale_y_continuous(limits = c(0, 1),breaks = c(0, 0.50, 1),minor_breaks = NULL)