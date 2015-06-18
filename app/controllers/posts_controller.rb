class PostsController < ApplicationController

  before_action :authenticate_with_token!

  def index
    @posts = Post.all
    render json: @posts, status: :ok
  end


  def create
    @post = current_user.posts.new(image_url: params[:image_url],
                                   answer: params[:answer])
    if @post.save
        render json: { post: @post.as_json(only: [:id, :image_url, :answer, :solution, :created_at, :updated_at]) },
          status: :created
    else
        render json: { @post.errors.full_messages },
          status: :unprocessable_entity
    end
  end

  def show
     @post = Post.find(params[:id])
     render json: @post, status: :ok
  end

end
