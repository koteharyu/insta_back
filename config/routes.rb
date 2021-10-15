Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      resource :session, only: %i[create destroy]
      resources :posts, only: %i[index show create update destroy]
    end
  end
end
