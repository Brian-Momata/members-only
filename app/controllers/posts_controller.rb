class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

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
    render :index
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
