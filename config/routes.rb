Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/show'
  get 'doses/new'
  get 'doses/create'
  get 'doses/edit'
  get 'doses/update'
  get 'doses/destroy'
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
