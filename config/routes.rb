Rails.application.routes.draw do
  devise_for :users

  root to: 'recipes#index'

  resources :recipes do
    resources :assessments, only: [:new, :create, :edit, :update]
  end

  resources :revenges, only: [:index]

  resources :nocreateds, only: [:index]

  resources :searches, only: [:index, :show]

  namespace :categorys do
    resource :rice, only: [:show]
    resource :soup, only: [:show]
    resource :main, only: [:show]
    resource :side, only: [:show]
    resource :dessert, only: [:show]
    resource :others, only: [:show]
  end

end
