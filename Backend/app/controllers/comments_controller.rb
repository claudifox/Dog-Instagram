class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    find_comment
    render json: @comment
  end

  def create
    @comment = Comment.new(content: params[:content], post_id: params[:post_id])
    if @comment.save
      render json: @comment
    else
      render json: {error: "Unable to create post."}, status: 400
    end
  end

  def update
    @comment.update(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    find_post
    @post.destroy
  end
end


private

  def comment_params
    params.permit(:content, :post_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end
