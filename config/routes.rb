Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :articles
      get "/books", to: "books#index"
    end
  end

  get "/articles/new", to: "articles#new"
  get "/articles/edit/:id", to: "articles#edit", as: "edit"
  resources :articles
end
