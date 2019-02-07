class SessionsController < ApplicationController

  include SessionsHelper

  def new
  
  end

  def create

      puts "*********************************************"
      puts "user find by email"
      puts session
      puts "*********************************************"


    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])


      puts "*********************************************"
      puts "user found & authentified"
      puts user.id
      puts "*********************************************"


      log_in(user)
      
      flash.now[:successful_login]


      puts "*********************************************"
      puts "flash now, successful login"
      puts session[:user_id]
      puts "*********************************************"


      redirect_to root_path

    else

      puts "*********************************************"
      puts "user not found and/or not authentified"
      puts user.id
      puts "*********************************************"


      #flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end