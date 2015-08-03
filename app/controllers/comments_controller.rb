class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
    # or @post.comments
  end

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    # or @post.comments.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_comment_path(@post, @comment)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.update(comment_params.merge(post: @post))
    redirect_to post_comment_path(@comment.post, @comment)

  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @commnet.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:text_body, :photo_url, :author, :post_id)
    # you can remove :post_id here, because it's `merge`d in above.
  end
end
