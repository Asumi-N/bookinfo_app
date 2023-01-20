Rails.application.routes.draw do
  get '/', to: 'home#top'
  resources :reviews
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
