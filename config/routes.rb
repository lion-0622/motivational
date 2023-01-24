Rails.application.routes.draw do
  devise_for :users
    get 'tweets/genki' => 'tweets#genki'
    get 'tweets/yaruki' => 'tweets#yaruki'
   
  resources :tweets do
    
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'tweets#index'
end