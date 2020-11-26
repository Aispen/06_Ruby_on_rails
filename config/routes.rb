Rails.application.routes.draw do
  resources :dogefacts
  root "pages#show", page: "home"
  
  match '/home', to: 'pages#home', via: 'get'
  match '/cat', to: 'another#cat', via: 'get'
  match '/dog', to: 'pages#dog', via: 'get'
  match '/about', to: 'pages#about', via: 'get'
end