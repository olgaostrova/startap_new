Rails.application.routes.draw do
  get 'like/toggle'
  get 'dislike/toggle'
  get 'tap/toggle'

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create, :update, :destroy]
      resources :startups, only: [:index, :show, :create, :update, :destroy]

      get 'welcome/index'
      get 'profile', to: "profile#show"

          
      devise_scope :user do
        post "sign_in", to: "sessions#create"
        post "sign_up", to: "registrations#create"
        post "sign_out", to: "sessions#destroy"
      end
    end

  end

  devise_for :users


  # Profile routes
  resource :profile, only: [:show, :edit, :update, :destroy], controller: 'profile' do
    collection do
      get 'my', to: 'profile#my'  # /profile/my
    end
  end

  # Additional profile route
  get 'profiles/:id', to: 'profile#show', as: :user_profile

  resources :posts, only: [:index, :show, :edit, :new, :destroy, :create, :by_tag] do
    collection do
      get "my"
    end

    resources :comments
    #, only: [:create]

    get "/by_tag/:tag", to: "posts#by_tag", on: :collection, as: "tagged"
  end

  resources :startups, only: [:index, :show, :edit, :new, :destroy, :create] do
    collection do
      get "my"
    end

    get "/by_tag/:tag", to: "startups#by_tag", on: :collection, as: "tagged"
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

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  match '/index', to: 'posts#index', via: 'get'

  get 'welcome/index'
  get 'welcome/about'
  root "posts#index"
end
