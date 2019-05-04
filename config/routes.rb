Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  delete '/:id' => 'tweets#destroy'
  get '/:id/edit' =>  'tweets#edit'
  patch '/:id' => 'tweets#update'
end
