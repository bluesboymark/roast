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

  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  def edit
  end

  def update
  end

  def destroy


    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(params[:post])
  end

  def comment_params
    ({body: params[:comment][:body], user_id: current_user.id})
  end
end
