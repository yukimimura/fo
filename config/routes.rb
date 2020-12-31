Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'homes#top'
  get 'foods/index'

  devise_for :users

  resources :recipes do
    collection do
      get :search
    end
  end
  
end
