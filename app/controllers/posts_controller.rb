class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
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
  end

  def update
  end

  def destroy
  end
  def post_params
    ({title: params[:post][:title], description: params[:post][:description], user_id: current_user.id})
  end
end
