Rails.application.routes.draw do

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :posts, only: [:index, :show]
      resources :startups, only: [:index, :show]
      get 'welcome/index'
    end
  end

  devise_for :users

  resources :posts, only: [:index, :show, :edit, :new, :destroy] do
    collection do
      get "my"
    end
    resources :comments, only: [:create]

    get "/by_tag/:tag", to: "posts#by_tag", on: :collection, as: "tagged"
  end
  resources :startups, only: [:index, :show] do
    collection do
      get "my"
    end
  end
  resources :subscriptions, only: [:create]


  namespace :admin do
    resources :tags
    resources :tag_types
    resources :messages
    resources :comments
    resources :chats
    resources :subscriptions

    resources :startups, except: [:index, :show] 
    resources :posts, except: [:index, :show] 
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  match '/index', to: 'posts#index', via: 'get'

  get 'welcome/index'
  get 'welcome/about'
  root "welcome#index"
end
