Rails.application.routes.draw do

  root 'simplepages#home'
  resources :projects do
    resources :tasks
  end  

end
