Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
   resources :home, only: [:index]
end
