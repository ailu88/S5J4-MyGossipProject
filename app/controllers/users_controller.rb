class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  	
  	puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    
    @user = User.new(title: params[:title], content: params[:content], user_id: params[:user_id])
    

    puts "$" * 60
    puts "ceci est mon objet Gossip :"
    puts @gossip.title
	puts @gossip.content
	puts @gossip.user_id
	puts @gossip.user.first_name
	puts @gossip.user.last_name
    puts "$" * 60


    if @gossip.save
      redirect_to @gossip
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to gossips_path
  end

end