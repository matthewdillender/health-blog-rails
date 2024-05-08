class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /posts/:post_id/comments
  def index
    @comments = @post.comments
    render json: @comments
  end

  # GET /posts/:post_id/comments/1
  def show
    render json: @comment
  end

  # POST /posts/:post_id/comments
  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: post_comment_url(@post, @comment)
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/:post_id/comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:post_id/comments/1
  def destroy
    @comment.destroy
    head :no_content
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = @post.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end
end
