Rails.application.routes.draw do
  get 'organizations/index'
  get 'organizations/show'
  get 'organizations/new'
  get 'organizations/create'
  get 'organizations/edit'
  get 'organizations/update'
  get 'organizations/destroy'
    get 'associas/index'
    get 'associas/show'
    get 'associas/new'
    get 'associas/create'
    get 'associas/edit'
    get 'associas/update'
    get 'associas/destroy'
    get 'associa/index'
    get 'associa/show'
    get 'associa/new'
    get 'associa/create'
    get 'associa/edit'
    get 'associa/update'
    get 'associa/destroy'
  devise_for :users
  root to: "pages#home"
  resources :associas do
    resources :events, only: [:destroy]
    resources :articles, only: [:destroy]
  end
  
  
  
  # get 'participations/create'
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/create'
  # get 'articles/edit'
  # get 'articles/update'
  # get 'articles/destroy'
  # get 'events/index'
  # get 'events/show'
  # get 'events/create'
  # get 'events/edit'
  # get 'events/update'
  # get 'events/destroy'
  # get 'associations/index'
  # get 'associations/show'
  # get 'associations/new'
  # get 'associations/create'
  # get 'associations/edit'
  # get 'associations/update'
  # get 'associations/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
