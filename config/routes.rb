Rails.application.routes.draw do
  resources :groups
  resources :polls do
    member do
      put "like", to: "groups#upvote"
      put "dislike", to: "groups#downvote"
    end
  end
  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
