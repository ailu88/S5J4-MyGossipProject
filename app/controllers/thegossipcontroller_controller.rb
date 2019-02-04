class ThegossipcontrollerController < ApplicationController
	def team
	end 
	def contact
	end
	def welcome
	end
	def home
		@gossips = Gossip.all
	end 
	def gossip_page
		@mygossip = Gossip.find(params[:id])
	end
	def author_page
		@myauthor = User.find(params[:id])
	end
end
