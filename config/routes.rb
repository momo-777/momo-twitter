Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  Rails.application.routes.draw do
    get 'sample/index' => 'sample#index'
    root 'sample#index'
  
    get 'sample/link' => 'sample#link'

    get 'diaries' => 'diaries#index'

    get 'diaries/new' => 'diaries#new'

    post 'diaries' => 'diaries#create'

    get 'diaries/:id' => 'diaries#show',as: 'diary'

    patch 'diaries/:id' => 'diaries#update'

    delete 'diaries/:id' => 'diaries#destroy'

    get 'diaries/:id/edit' => 'diaries#edit', as:'edit_diary'
  end

end
