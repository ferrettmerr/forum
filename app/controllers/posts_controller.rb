class PostsController < ApplicationController
	before_filter :authenticate_user!
	def index
		@threads = Post.threads
	end

	def show
		@thread = Post.find_by_id(params[:id])
		impressionist(@thread) 
	end
	def create

	end

	def delete

	end
end