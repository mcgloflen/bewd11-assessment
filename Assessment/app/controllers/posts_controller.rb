class PostsController < ApplicationController
    def index
        @posts = User.find(params[:user_id]).posts
    end
    
	def new
		@user = User.find(params[:user_id])
		@post = Post.new
	end
	
	def create
		User.find(params[:user_id]).posts.create(post_params)
		
		redirect_to user_posts_path
	end
    
    def post
        @posts = User.find(params[:user_id]).posts
    end
    
    def show
        @post = post.find(params[:id])
        render user_posts_path
    end
    
private
	
	def post_params
		params.require(:post).permit(:content)
	end
end
