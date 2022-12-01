Rails.application.routes.draw do
  devise_for :users
  get 'archives/index'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resources :entries
  root to: "entries#index"
end
