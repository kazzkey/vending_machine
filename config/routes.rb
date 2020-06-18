Rails.application.routes.draw do
  resources :purchases, only: %i[index create] do
    member do
      get :done
    end
  end
  resources :stocks
end
