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
    @comment = Comment.new(comment_params)
    @comment.gossip_id = params[:gossip_id]

    @comment.save

    redirect_to gossip_path(@comment.gossip)

    puts params 

  end

  def comment_params
    params.require(:comment).permit(:user_id, :content)
    puts params 
  end
      

  def destroy
    @comment = City.find(params[:id])
    @comment.destroy
    redirect_to comment_path
  end

end