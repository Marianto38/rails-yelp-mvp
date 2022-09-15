Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'
  # Un visitante puede ver la lista de todos los restaurantes.
 # get '/restaurants', to: 'restaurants#index'
  # Un visitante puede agregar un nuevo restaurante y ser redireccionado a la vista show de ese nuevo restaurante.
  # get 'restaurants/new', to: 'restaurants#new', as: :new
  # post 'restaurants', to: 'restaurants#create'
  # Un visitante puede ver los detalles de un restaurante con todos sus reviews.
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Un visitante puede agregar un review a un restaurante.
  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :review_new
  # post 'restaurants/:id/reviews', to: 'reviews#create'
  resources :restaurants, only: [:new, :index, :show, :create, :edit, :destroy, :update] do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
    resources :reviews, only: [:destroy]
end
