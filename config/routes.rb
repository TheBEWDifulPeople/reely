Reely::Application.routes.draw do
  
  devise_for :users
  resources :playlists
  root "home#index"

end
