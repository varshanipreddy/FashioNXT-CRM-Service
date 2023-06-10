class PostsController < ApplicationController
    before_action :set_post, only: %i[ show edit update destroy ]
  
    def index
      @posts = Post.all
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "Posts: #{@posts.count}", template: "posts/index.html.erb"
        end
      end
    end
  
    def show
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "Post id: #{@post.id}", template: "posts/show.html.erb"
        end
      end
    end
  
    def new
      @post = Post.new
    end
  
    def edit
    end
  
    def create
      @post = Post.new(post_params)
      if @post.save
        EventMailer.event_created.deliver_later
        redirect_to @post, notice: "Post was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def update
      if @post.update(post_params)
        redirect_to @post, notice: "Post was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @post.destroy
      redirect_to posts_url, notice: "Post was successfully destroyed."
    end
  
    private
      def set_post
        @post = Post.find(params[:id])
      end
  
      def post_params
        params.require(:post).permit(:title, :content, :image)
      end
  end
