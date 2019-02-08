class UsersController < ApplicationController

  include SessionsHelper

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
    
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], city_id: City.all.ids.sample)

      puts "*********************************************"
      puts "@user.id"
      puts @user 
      puts "*********************************************"

    if @user.save
      
      log_in(@user)
      session[:user_id] = @user.id
      current_user
      redirect_to root_path
    else
      render :new
    end

      puts "*********************************************"
      puts "session"
      puts session
      puts "*********************************************"

      puts "*********************************************"
      puts "my params"
      puts params
      puts "*********************************************"


      puts "*********************************************"
      puts "current user"
      puts current_user
      puts "*********************************************"

  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to gossips_path
  end

end