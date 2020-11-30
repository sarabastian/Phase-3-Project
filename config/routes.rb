Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :destinations, only: [:index, :show, :update]
      resources :users, only: [:index, :update]
      resources :road_trips
    end
  end
end
