class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
    @posts = Post.all
    @post = Post.new
    @tags = Tag.all
    @tag = Tag.new
    render :index
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    if @tag.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private
    def tag_params
      params.require(:tag).permit(:category)
    end
  end
