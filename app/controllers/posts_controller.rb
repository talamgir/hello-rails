class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find_by(
			params[:user_id]
			)
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to "/posts/show"
		else
			render :back
		end
	end

	def post_params
		params.require(:post).permit(:content, :user_id)
	end

end
