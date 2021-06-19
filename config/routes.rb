Rails.application.routes.draw do
  root 'ms_villagers#show_villagers'
  get 'ms_villagers/show_villagers'
  get 'ms_villagers/calculate_villagers'

end
