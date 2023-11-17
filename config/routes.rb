Rails.application.routes.draw do
  get 'lists/new'

  post 'lists' => 'lists#create'

  # get 'lists/index'
  get 'lists' => 'lists#index'

  # get 'lists/show' # 下記.../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'

  get 'lists/edit'

  get '/top' => 'homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
