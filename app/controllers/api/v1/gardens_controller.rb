module Api
  module V1
    class GardensController < ApplicationController
      def index
        render json: Garden.all
      end
    end
  end
end