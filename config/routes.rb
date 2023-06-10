Rails.application.routes.draw do
  resources :companies do 
    collection { post :import }
  end
  resources :posts
  resources :post
  resources :users
  resources :user
  mount ActiveAnalytics::Engine, at: "analytics"
  get '/' => 'users#index'
  get '/posts' => 'posts#index'
  post 'sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'crms#index'
  get '/admin' => 'admin#userpage'
  get 'logs' => 'logs#index'
  get 'companies' => 'companies#index'
  get 'logout'  => 'sessions#destroy'
  get '/crmusers' => 'users#usermanage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home' => 'home#index'
end