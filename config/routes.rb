Rails.application.routes.draw do
  root 'post_images#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resource → post_images.id みたいなurlになる。必ず１個になる idが作られない
  # イイね 等
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only:[:create,:destroy]
    resource :post_comments, only: [:create]
  end

  resources :users,only: [:show, :edit, :update]
end
