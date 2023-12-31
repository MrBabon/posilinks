# frozen_string_literal: true

Rails.application.routes.draw do
  get 'organizations/index'
  get 'organizations/show'
  devise_for :users
  root to: "pages#home"
  resources :organizations do
    resources :events, only: [:index, :show]
  end
  resources :events, except: [:destroy] do
    resources :participations, only: [:destroy]
  end
  resources :participations, only: [:create]


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
