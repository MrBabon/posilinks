Rails.application.routes.draw do
  root to: "pages#home"
  resources :associations do
    resources :events, only: [:destroy]
    resources :articles, only: [:destroy]
  end
  
  
  
  get 'participations/create'
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  get 'events/index'
  get 'events/show'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'associations/index'
  get 'associations/show'
  get 'associations/new'
  get 'associations/create'
  get 'associations/edit'
  get 'associations/update'
  get 'associations/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
