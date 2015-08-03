class PostsController < ApplicationController
  # index
  def index
    @posts = User.find(session[:user]["id"]).posts
    # excellent!!
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @user = User.find(session[:user]["id"])
    @post = @user.posts.create!(post_params)
    # excellent job associating posts with users!
    redirect_to (post_path(@post))

  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)

  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:subject, :text_body, :photo_url, :author)
  end
end
