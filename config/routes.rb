Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "tour#index"
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    resources :tour, only: %i(index show )
    resources :users, only: %i(new create )
    resources :book_tours, only: %i(create )
    namespace :admin do
      resources :book_tours, :index
    end
  end
end
