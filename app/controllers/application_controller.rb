class ApplicationController < ActionController::Base
	
	include SessionsHelper

	  	def team
		end 
		
		def contact
		end
		
		def welcome
		end

		def index
		    redirect_to root_path
		 end

end

