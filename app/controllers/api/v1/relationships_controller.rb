module Api
  module V1
    class RelationshipsController < ApplicationController

      def new
      end

      def index
        @relationships = Relationship.all
        data = @relationships
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