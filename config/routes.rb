Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root to: 'home#top'
  get "home/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

  resources :users, only:[:index, :show, :edit, :update]
end
