class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
  	
  	puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    
    @comment = Comment.new(content: params[:content], user_id: params[:user_id])
    @comment.gossip_id = params[:gossip_id]
    
    @comment.save
    
    redirect_to gossip_path(@comment.gossip)
    
  end

  def destroy
    @comment = City.find(params[:id])
    @comment.destroy
    redirect_to comment_path
  end

end