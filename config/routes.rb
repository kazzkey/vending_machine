Rails.application.routes.draw do
  resources :purchases, only: %i[index] do
    member do
      get :done
    end
  end
  resources :stocks
end
