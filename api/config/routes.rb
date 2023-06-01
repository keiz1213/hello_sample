Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only:[:create, :index]
      resources :hello, only:[:index]
    end
  end
end
