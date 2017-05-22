Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  #routes a get request for '/help' to: 'help' action in static pages controller
  #each rule will create two routes help_path -> '/help' and help_url -> 'http:www.example.com/help' (full url)
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
end
