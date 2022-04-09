Rails.application.routes.draw do
  devise_for :users

  root to: 'recipes#index'

  resources :recipes do
    resources :assessments, only: [:new, :create, :edit, :update]
  end

  resources :revenges, only: [:index]

  resources :nocreateds, only: [:index]

end
