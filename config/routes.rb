Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # need to implement nested routes

  # get '/login' => "sessions#new"

  # need to fix nested routing problem


  resources :books

  resources :book_ownerships

end