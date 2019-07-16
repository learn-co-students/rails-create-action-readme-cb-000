class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here. The create method will create a new post by pulling in form
  #data that the user has typed in and submitted. If the form is properly connected
  #to the controller and model, the title and description will be populated for us. 
  #Once the post is saved to the database, we are asking the system to redirect
  #the user to the route helper post_path(@post), which renders a relative link to 
  #our show page. The prefix post is what lets the system know this is for the show page.
  
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

end
