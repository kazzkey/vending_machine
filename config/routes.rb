Rails.application.routes.draw do
  root to: 'purchases#index'
  resources :purchases, only: %i[index create] do
    member do
      get :done
    end
  end
  resources :stocks
end
