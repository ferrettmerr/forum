class PostsController < ApplicationController
	before_filter :authenticate_user!
	def index
		@threads = Post.all
	end

	def show
		@thread = Post.find_by_id(params[:id])
		impressionist(@thread, :message => "wtf is a widget?") 
	end
	def create

	end

	def delete

	end
end