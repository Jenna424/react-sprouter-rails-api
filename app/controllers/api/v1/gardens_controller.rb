module Api
  module V1
    class GardensController < ApplicationController
      before_action :set_garden, only: [:show, :update, :destroy]

      def index
        render json: Garden.all
      end

      def create
        garden = Garden.new(garden_params)
        if garden.save
          render json: garden, status: 201 # indicates successful resource creation
        else
          render json: { errors: garden.errors.full_messages }, status: :unprocessable_entity # status: 422
          # render json: { status: 500, error: 'garden was not saved successfully' }
        end
      end

      def show
        render json: @garden, status: 200
      end

      def update
        if @garden.update(garden_params)
          render json: @garden, status: 200
        else
          render json: { errors: @garden.errors.full_messages }, status: 400
        end
      end

      def destroy
        if @garden.destroy
          render json: { message: "Garden was successfully deleted!" }, status: 200
        else
          render json: { errors: "Unable to delete garden" }, status: 400
        end
      end

      private

        def garden_params
          params.require(:garden).permit(:name, :layout, :garden_type, plant_ids: [])
        end

        def set_garden
          @garden = Garden.find_by(id: params[:id])
        end
    end
  end
end