class PostsController < ApplicationController
	before_filter :authenticate_user!
	def index
		@threads = Post.threads
	end

	def show
		@thread = Post.find_by_id(params[:id])
		impressionist(@thread) 
	end

	def new
		@post = Post.new
		if params.has_key? :post_id
			@thread_id = params[:post_id]
		end
	end

	def create
		@post = Post.new(params[:post])
		@post.user = current_user
      if @post.save
      	if @post.thread.nil?
					redirect_to :action => 'show', id: @post.id
      	else
					redirect_to :action => 'show', id: @post.thread.id        
	      end
      end
	end

	def delete

	end
end