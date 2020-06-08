Rails.application.routes.draw do

  root 'posts#index'
  get 'posts/:id/edit'=> 'posts#edit'
  resources:posts, except: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources  :posts, only: [:index, :create, :new, :show, :update, :destroy]
end
