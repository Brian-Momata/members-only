class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    
  end

  def create
    @post = Post.new(params[:body])
    @post.user_id = session[:current_user_id]

    if @post.save
      redirect_to action: 'index'
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
    @posts = Post.all
  end
end
