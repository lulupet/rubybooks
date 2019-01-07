Rails.application.routes.draw do
  #Books
  root 'books#index'
  resources :books

  get 'books/new' => 'books#new'
end
