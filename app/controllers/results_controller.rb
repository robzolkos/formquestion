class ResultsController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render "index", status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end
