Rails.application.routes.draw do
  # devise_for :users
  resources :favorites
  resources :snippets
  resources :users

  # get 'welcome' => 'landing#landingpage'
  root 'landing#landingpage'

  get '/index' => 'users#showIndex'
  post '/index' => 'users#showIndex'
  get '/login' => 'users#showLogin'
  get '/lock' => 'users#showLock'
  get '/logout' => 'users#showLogout'
  get '/register' => 'users#new'
  get '/personal' => 'users#showPersonal'
  get '/fav' => 'users#showFav'
  get '/performance' => 'users#showPerformance'
  get '/confirmation/:token' , to: 'users#verifyToken'
  get '/test' => 'users#sendEmail'
  post '/getinput' => 'users#getinput'
  post '/forgotpw' => 'users#forgotPW'
  get '/forgotpw/:token' => 'users#verifyToken'

end
