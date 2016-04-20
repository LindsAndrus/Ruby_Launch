Rails.application.routes.draw do
  resources :sessions
  resources :secrets
  resources :users
  post '/secrets/like/:id' => 'secrets#likes'
  post '/secrets/unlike/:id' => 'secrets#unlikes'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'sessions#new'

end
