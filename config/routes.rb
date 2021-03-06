Rails.application.routes.draw do
  resources :champions
  resources :records
  resources :abouts
  devise_for :users

  resources :posts do
    member do
     put "like", to: "posts#upvote"
     put "dislike", to: "posts#downvote"
    end
  end

  resources :seasons do
    resources :weeks do
      resources :posts do
        member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
        end
      end
    end
    member do
      get 'hide_details'
      get 'show_details'
      get 'record_book'
    end
  end

  resources :teams do
    member do
      get 'the_league'
      get 'show_details'
      get 'record_book'
    end
  end

  
  

  root :to => 'abouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
