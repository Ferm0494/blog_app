class CommentsController < ApplicationController
  include CommentControllerHelper
  before_action :set_post;
  before_action :set_comment,only:[:update, :edit]
  
  def index
    @comments = Comment.where(post_id: @post.id)
  end

  def new
    @comment = Comment.new()
  end

  def create
    @comment = Comment.new(comment_params_post)
    if @comment.save
      redirect_to post_comments_path
      flash[:success] = "Comment created!"
    else
      render 'new'
    end
  end

  def edit
  
  end

  def update  
    if @comment.update(comment_params_update)
      redirect_to post_comments_path
      flash[:success] = "Comment updated"
    else
      render 'edit'
    end
  end
end
