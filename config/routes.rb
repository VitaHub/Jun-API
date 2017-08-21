Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: %i[index create destroy]
end
