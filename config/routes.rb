Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants, only: '%i[:index, :show, :new, :create, :edit]' do
  #   resources :reviews, only: '%i[ :new, :create ]%i'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # resources :reviews, only: '%w[ :destroy ]'
end
