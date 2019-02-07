Rails.application.routes.draw do

resources :gossips do
	resources :comments
end

resources :users

resources :cities

resources :sessions, only: [:new, :create, :destroy]

root 'gossips#index'

get '/team', to: 'application#team'

get '/contact', to: 'application#contact'



end
