module Api
  module V1
    class GardensController < ApplicationController
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

      private

        def garden_params
          params.require(:garden).permit(:name, :layout, :garden_type, plant_ids: [])
        end
    end
  end
end