Rails.application.routes.draw do
  root to: 'static_pages#index'
  get "user" => "static_pages#_user"
  get "admin_user" => "static_pages#_admin_user"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :admin_users, controllers: {
    sessions: 'admin_users/sessions',
    passwords: 'admin_users/passwords',
    registrations: 'admin_users/registrations'
  }
  resources :static_pages, only: [:index,:new,:create] 
end
