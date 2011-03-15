Sitelist::Application.routes.draw do
  devise_for :users

  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/admin', :to => 'pages#administration'

  root :to => 'pages#home'
end

