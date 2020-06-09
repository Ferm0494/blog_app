class PostsController < ApplicationController

before_action :set_post, only: [:show, :edit, :update, :destroy]

 private def set_post
    @post = Post.find(params[:id])
  end

  def index 
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  

  def edit  
  end

  def update 
    if @post.update(put_params)
      flash[:success] = "Post was successfully updated!"
      redirect_to @post
    else
      render 'edit'
      flash[:error] ="Post couldnt be updated!"
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post successfully created!"
      redirect_to root_path
    else
      puts "Errors given #{@post.errors.full_messages}"
      flash[:error] = "Post couldnt be created!"
      render 'new'
    end
  end

  def destroy
   if Post.destroy(@post.id)
      flash[:success] = "Post deleted sucesful!"
      redirect_to root_path
   else
      flash[:error]= "Post Couldnt be deleted!"
   end
  end

  def put_params
    params.permit(:body)
  end

  def post_params
   params.permit(:title,:body)
  end

 
end
