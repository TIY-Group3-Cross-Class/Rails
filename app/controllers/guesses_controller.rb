class GuessesController < ApplicationController
  before_action :authenticate_with_token!

  def create
    @post = Post.find(params[:id])
    score = params[:guess] == @post.answer ? 1 : 0
    @guess = @post.guesses.new(guess: params[:guess],
                               points: score,
                               user_id: current_user.id)
    if @guess.save
      render json: {guess: @guess.as_json(only: [:user_id, :post_id, :guess, :points, :created_at, :updated_at])}, status: :created
    else
      render json: {message: 'bad parameters'},
        status: :unprocessable_entity
    end
  end
end



