Rails.application.routes.draw do

resources :gossips do
	resources :comments
end

resources :users

resources :cities

root 'gossips#index'

get '/team', to: 'thegossipcontroller#team'

get '/contact', to: 'thegossipcontroller#contact'



end
