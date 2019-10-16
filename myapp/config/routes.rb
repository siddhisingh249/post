Rails.application.routes.draw do
  resources :posts do
  resources :comments
end
  devise_for :users
  resources :users
  root 'users#home'
  post 'users/admin/:id', to: 'users#admin'
  delete '/comments/:id', to: 'comments#destroy'
  get 'posts/comments/:id',to: 'posts#comments'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
