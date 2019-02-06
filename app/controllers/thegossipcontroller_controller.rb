class ThegossipcontrollerController < ApplicationController
	def team
	end 
	
	def contact
	end
	
	def welcome
	end
	
	def author_page
		@myauthor = User.find(params[:id])
	end
end
