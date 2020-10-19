Rails.application.routes.draw do
  devise_for :users
  resources :boards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 예제
  get '/add' => 'calculator#add'
  post '/result' => 'calculator#result'
  get '/result/:first/:second' => 'calculrator#result'
  # CR
  get '/index' => 'home#index'
  get '/write' => 'home#write'
  post '/create' => 'home#create'
  # UD
  get '/modify/:post_id' => 'home#modify'
  post '/update/:post_id' => 'home#update'
  get '/delete/:post_id' => 'home#delete'
  # Scaffolding
  get '/' => 'boards#index'
end
