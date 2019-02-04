class PostsController < ApplicationController

  def index
   @posts = Post.all
   render json: @posts
  end

  def create
   @post = Post.new(image: params[:image], title: params[:title], description: params[:description], like_count: 0)
   if @post.save
     render json: @post
   else
     render json: {error: "Unable to create post."}, status: 400
   end
  end

  def show
    find_post
    render json: @post
  end

  def update
    find_post
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    find_post
    @post.destroy
  end

  def increase_likes
   find_post
   @post.like_count+=1
   @post.save
   render json: @post
  end
end



private

  def post_params
    params.permit(:image, :title, :description, :like_count)
  end

  def find_post
    @post = Post.find(params[:id])
  end
