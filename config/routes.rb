Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants'
  get 'restaurants/new'
  post 'restaurants'
end
