Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  namespace :api do
    namespace :v1 do
      resources :members, only: [:index]
      resources :board_members, only: [:index]
      resources :use_cases, only: [:index]
      resources :posts, only: [:index]
      resources :vacancies, only: [:index]
    end
  end
end
