Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      # get "/ordered-prompts", to: "propmts#ordered"
      # get "/most-stories", to: "posts#most_stories"
      post "/auth/:provider/callback", to: "sessions#omniauth"

      resources :users, only: [:update, :destroy] #want to name routes individually
      post "/signup", to: "users#create" #down here so we could call it differently
      get "/me", to: "users#show"
      post "/login", to: "sessions#create"
      delete "/logout", to: "sessions#destroy"
  
      
    
      resources :items
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
