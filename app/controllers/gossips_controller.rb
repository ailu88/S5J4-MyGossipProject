class GossipsController < ApplicationController

	include SessionsHelper

	before_action :authenticate_user, only: [:create, :new, :edit, :delete ]

	before_action :author_match, only: [:edit, :destroy]

  def index
    	@gossips = Gossip.all

    	puts "*********************************************"
    	puts "*********************************************"

    	puts "Value of current_user once arrived in Gossip Index Page"

    	puts current_user


    	puts "*********************************************"
    	puts "*********************************************"

  end

  def show
	    @gossip = Gossip.find(params[:id])
	    @comment= Comment.new
	    @comment.gossip_id = @gossip.id
  end

  def new
    	@gossip = Gossip.new
  end

  def edit
    	@gossip = Gossip.find(params[:id])
  end

  	def create

	    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: params[:user_id])
	    
	    @gossip.user = current_user

		  if @gossip.save
		    flash[:success] = "Potin bien créé !"
		    redirect_to @gossip
		  else
		    render :new
		end
  end

  def update
	    @gossip = Gossip.find(params[:id])
	    if @gossip.update(title: params[:title], content: params[:content], user_id: params[:user_id])
	      redirect_to @gossip
	    else
	      render :edit
	    end
  end

  def destroy
	    @gossip = Gossip.find(params[:id])
	    @gossip.destroy
	    redirect_to gossips_path
  end


  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end


  def author_match
    @gossip = Gossip.find(params[:id])
    unless current_user.id == @gossip.user.id
      	flash[:danger] = "You are not allowed."
		end
	end


end 