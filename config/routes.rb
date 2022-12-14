Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[new create index show] do
    resources :booksmarks, only: %i[new create]
  end

  resources :booksmarks, only: %i[destroy]
end
