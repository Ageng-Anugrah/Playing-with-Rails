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

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
