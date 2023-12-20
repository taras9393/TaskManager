Rails.application.routes.draw do

  root 'simplepages#home'
  resources :projects
  resources :tasks

end
