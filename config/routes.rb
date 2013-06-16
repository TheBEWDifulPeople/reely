Reely::Application.routes.draw do
  
  resources :playlists
  root "home#index"

end
