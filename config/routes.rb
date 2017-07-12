Rails.application.routes.draw do

  resources :alis
  resources :accessories
  resources :fridge_grid
  devise_for :users
  get 'welcome/index'
  get 'main/index'
  get 'users/sign_in'

  resources :fridges
  authenticated :user do

    root "fridges#index", as: "authenticated_root"
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
