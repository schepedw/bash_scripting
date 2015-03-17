Rails.application.routes.draw do
  get '/names' => 'names#index'
  post '/names' => 'names#check_unique'
end
