module Api
  module V1
    class PostsController < ApplicationController

      before_action :set_post, only: [:show, :update, :destroy]

      def index
        posts = Post.order(created_at: :desc)
        render json: { data: posts }, status: :ok
      end

      def show
        render json: { data: @post }, status: :ok
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: { data: post } ,status: :created
        else
          render json: { data: post.errors }
        end
      end

      def destroy
        @post.destroy
        render json: { message: 'Deleted the post', data: @post }, status: :created
      end

      def update
        if @post.update(post_params)
          render json: { message: 'Updated the post', data: @post },status: :created
        else
          render json: { message: 'Not updated', data: @post.errors }
        end
      end

      private

      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title)
      end
    end
  end
end


