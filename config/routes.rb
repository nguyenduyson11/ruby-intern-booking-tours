Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "tour#index"
    get "/signup", to: "users#new"
    resources :tours, only: %i("index")
    resources :users, only: %i("new create ")
  end
end
