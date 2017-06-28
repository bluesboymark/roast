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
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def comment_params
    ({body: params[:post][:body], user_id: current_user.id})
  end
end
