Rails.application.routes.draw do
  devise_for :users
  get '/' => 'home#index'
   get '/post' => 'home#post'
   get '/detail/:post_id' => 'home#detail'
   get '/delete/:post_id' => 'home#delete'
   get '/edit/:post_id' => 'home#edit'
   get '/update/:post_id' => 'home#update'
  get '/comment/:post_id' => 'home#comment'
end
