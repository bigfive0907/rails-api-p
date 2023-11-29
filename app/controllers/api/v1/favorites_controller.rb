module Api
  module V1
    class FavoritesController < ApplicationController

      def new
      end

      def index
        @favorites = Favorite.all
        data = @favorites
        render json: data , status: :ok
      end

      def show
      end

      def create
      end

      def destroy
      end
    end
  end
end