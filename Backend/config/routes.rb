Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :create, :show, :destroy]
  resources :comments, only: [:index, :create, :show, :update, :destroy]
  post 'likes', to: 'posts#increase_likes'
end
