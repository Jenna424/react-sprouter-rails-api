Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :gardens, except: [:new, :edit]
      resources :plants, except: [:new, :edit]
    end
  end
end