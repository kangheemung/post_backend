Rails.application.routes.draw do
  get 'posts/index'=>'posts#index'
  get 'posts/new'=>'posts#new'
  post'posts'=>'posts#create'
  get 'posts/edit'=>'posts#edit'
  patch 'posts/update'=>'posts#update'
  get 'posts/:id'=>'posts#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
