require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq' if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users

  root to: 'recipes#index'

  resources :recipes do
    resources :assessments, only: [:new, :create, :edit, :update]
  end

  resources :revenges, only: [:index]

  resources :nocreateds, only: [:index]

  resources :searches, only: [:index]

  resources :search_results, only: [:index]


  namespace :categorys do
    resource :rice, only: [:show]
    resource :soup, only: [:show]
    resource :main, only: [:show]
    resource :side, only: [:show]
    resource :dessert, only: [:show]
    resource :others, only: [:show]
  end

  resource :contact, only: [:new, :create]

end
