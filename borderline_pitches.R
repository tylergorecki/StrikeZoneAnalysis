NYY_data <- read.csv('NYY_data.csv')

NYY_data$actual_loc_bot <- NYY_data$plate_z - NYY_data$sz_bot
NYY_data$actual_loc_top <- NYY_data$plate_z - NYY_data$sz_top

NYY_data %>% ggplot(aes(x = plate_x, y = plate_z, color = type)) +
  geom_point() + facet_wrap(~player_name)

NYY_data %>% ggplot(aes(x = plate_x, y = actual_loc_bot, color = type)) +
  geom_point() + facet_wrap(~player_name)

NYY_data %>% ggplot(aes(x = plate_x, y = plate_z, color = sz_top)) +
  geom_point() + facet_wrap(~player_name)

NYY_data %>% filter(zone == 8) %>% ggplot(aes(x = plate_x, y = plate_z, color = type)) +
  geom_point() + facet_wrap(~player_name)


