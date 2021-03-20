Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  root 'hello#index'

  get 'hello/link' => 'hello#link'
  get 'tweets' => 'tweets#index'
end