class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end


  def create
    @post = Post.create(image_url: params[:image_url],
                        user_id: params[:user_id],
                        answer: params[:answer],
                        guess: params[:guess],
                        solution: params[:solution],
                        timestamps: DateTime.now)
  end

  def show
     @post = Post.find(params[:id])
    
  end

end
