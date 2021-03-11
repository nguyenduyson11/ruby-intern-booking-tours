Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "tour#index"
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    resources :tours, only: %i("index")
    resources :users, only: %i("new create ")
  end
end
