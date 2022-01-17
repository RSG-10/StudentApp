Rails.application.routes.draw do
  resources :studprofiles
  resources :studmarks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'admin#login'
  post 'admin/login'
  get 'admin/logout'
end
