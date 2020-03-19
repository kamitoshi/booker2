Rails.application.routes.draw do
  get 'books/top'
  get 'books/index'
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
