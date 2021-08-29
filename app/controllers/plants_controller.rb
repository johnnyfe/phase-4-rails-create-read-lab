class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(params_plants)
        render json: plant, status: :created
    end

    private

    def params_plants
        params.permit(:name, :image, :price)
    end
        
end
