Rails.application.routes.draw do
  

  resources :categorias

  resources :categorias

  resources :proyects
   root :to => "proyects#index"
  devise_for :users
  resources :publicars
    
  resources :autors
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
