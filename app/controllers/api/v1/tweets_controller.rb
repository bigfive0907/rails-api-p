module Api
  module V1
    class TweetsController < ApplicationController

      def new
      end

      def index
      end

      def show
        @tweet = Tweet.find(params[:id])
        favorites = @tweet.favorites
        data = {
          tweet_id: @tweet.id,
          tweet_user_id: @tweet.user_id,
          body: @tweet.body,
          favorites: favorites
        }
        render json: data, status: :ok
      end

      def create
      end
    end
  end
end