Rails.application.routes.draw do

resources :gossips

resources :users

root 'gossips#index'

get '/team', to: 'thegossipcontroller#team'

get '/contact', to: 'thegossipcontroller#contact'



end
