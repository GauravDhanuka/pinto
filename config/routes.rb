Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  	end
    collection do
      get 'search'
    end
  	resources :comments
  end	
  root 'pins#index'
  get 'pages/about'
  get 'pages/contact'
  
end
