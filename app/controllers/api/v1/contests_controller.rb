module Api
  module V1
    class ContestsController < ApplicationController
      respond_to :json

      def index
        # respond_with Contest.all
        render json: Contest.all, each_serializer: ContestIndexSerializer
      end
      
      def show
        # respond_with Contest.find(params[:id])
        render json: Contest.find(params[:id])
      end

    end
  end
end
