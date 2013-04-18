class PostController < ApplicationController
	before_filter :authenticate_user!
	def index
		@threads = Post.all
	end

	def create

	end

	def delete

	end
end