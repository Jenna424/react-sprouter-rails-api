module Api
  module V1
    class PlantsController < ApplicationController
      def index
        render json: Plant.all
      end

      def show
        render json: Plant.find_by(id: params[:id]), status: 200
      end
    end
  end
end