class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
	end

  def create
    Post.create(title: params[:title], description: params[:description])
    redirect_to posts_path
  end

end
