class PostsController < ApplicationController

  def index
    redirect_to new_post_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @posts = Post.all
    @post = Post.new
    render :index
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to new_post_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  private
    def post_params
      params.require(:post).permit(:name, :title, :story, :url)
    end

end
