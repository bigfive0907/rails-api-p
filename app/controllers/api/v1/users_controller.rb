module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        data = []
        @users.each do |user|
          id = user.id
          email = user.email
          created_at = user.created_at
          data.push({id:id,email:email,created_at:created_at})
        end
        render json: data, status: :ok
      end

      def show
        @user = User.find(params[:id])
        user = {
          id:@user.id,
          email:@user.email
        }
        tweets = []
        @user.tweets.each do |tweet|
          tweets.push({id:tweet.id, body: tweet.body, isfavorite:tweet.favorites})
        end
        data = {
          user: user,
          tweets: tweets,
          favorites: @user.favorites.map{|favorite| favorite.tweet}
        }
        render json: data, status: :ok
      end
    end
  end
end


