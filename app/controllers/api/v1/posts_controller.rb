class Api::V1::PostsController < ApplicationController

  def index
    posts = Post.order(created_at: :desc)
    render json: posts, methods: [:image_url]
  end

  def show
    post = Post.find(params[:id])
    render json: post, methods: [:image_url]
  end

  def create
    # post = current_user.posts.build(post_params)
    post = Post.new(post_params)
    if post.save
      render json: post, methods: [:image_url]
    else
      render json: post.errors, status: 400
    end
  end

  def update
    # post = current_user.posts.find(params[:id])
    post = Post.find(params[:id])
    if post.update(post_params)
      render json: post
    else
      render json: post.errors
    end
  end

  def destroy
    # post = current_user.posts.find(params[:id])
    post = Post.find(params[:id])
    post.destroy!
    render json: post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id)
  end
end
