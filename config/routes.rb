Rails.application.routes.draw do

  devise_for :users
  resources :submissions do
    member do
      put "like", to: "submission#upvote"
      put "dislike", to: "submission#downvote"
    end
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'submissions#index'
end
