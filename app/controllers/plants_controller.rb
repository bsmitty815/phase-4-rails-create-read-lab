class PlantsController < ApplicationController

    # GET /plants
    def index
        #returns an array of all plants
        plants = Plant.all
        render json: plants
    end


    #GET /plants/:id
    def show
        plant = Plant.find_by(id: params[:id])
        render json:plant
        # if plant
        #     render json:plant
        # else
        #     render json: {error: "Plant not found"}, status: not_found
        # end
    end

    # POST /plants
    def create 
        # creates a new plant
        # returns the plant data
        # returns a status code of 201
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: 201
    end
end
