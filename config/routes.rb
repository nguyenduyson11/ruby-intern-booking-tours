Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "tour#index"
    resources :tours, only: %i("index")
  end
end
