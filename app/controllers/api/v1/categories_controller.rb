module Api
  module V1
    class CategoriesController < ApplicationController
      respond_to :json

      def index
        # respond_with Category.all
        render json: Category.all
      end
      
      def show
        # respond_with Category.find(params[:id])
        render json: Category.find(params[:id])
      end

    end
  end
end
