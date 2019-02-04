Rails.application.routes.draw do

root 'thegossipcontroller#home'

get '/team', to: 'thegossipcontroller#team'
get '/contact', to: 'thegossipcontroller#contact'

get 'welcome/:first_name', to: 'thegossipcontroller#welcome'

get 'gossip/:id', to: 'thegossipcontroller#gossip_page'

get 'author/:id', to: 'thegossipcontroller#author_page'

end
