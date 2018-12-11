Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :entries, except: [:destroy]
  resources :entries, only: [:index, :show]
end
