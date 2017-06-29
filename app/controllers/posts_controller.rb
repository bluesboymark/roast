class PostsController < ApplicationController
before_action :authorize, only: [:new, :create]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    end
  end

  def edit
    @post=Post.find(params[:id])
    @post.inspect
  end

  def update
    @post=Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to post_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.comments.destroy_all
    @post.destroy
    redirect_to root_path
  end

  private
  def post_params
    ({title: params[:post][:title], description: params[:post][:description], user_id: current_user.id})
  end
end
