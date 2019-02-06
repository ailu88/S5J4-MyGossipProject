class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def create
  	
  	puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: params[:user_id])
    

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

end