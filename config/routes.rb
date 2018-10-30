Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    member do
     put "like", to: "posts#upvote"
     put "dislike", to: "posts#downvote"
    end
  end

  resources :seasons do
    member do
      get 'hide_details'
      get 'show_details'
      get 'record_book'
    end
  end

  
  

  root :to => 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
