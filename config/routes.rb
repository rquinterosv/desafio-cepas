Rails.application.routes.draw do
  devise_for :users
  resources :categorywines
  resources :wines
  resources :categories

  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
