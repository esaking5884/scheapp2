Rails.application.routes.draw do
  get '/schdl/index'

  post "/schdl/create" => "schdl#create"
  patch "/schdl/:id/update" => "schdl#update"

  get "/" => "home#top"
  get "/home/about"
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 resources :schdl
end
