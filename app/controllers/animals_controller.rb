class AnimalsController < ApplicationController

    def index
        animals = Animal.all
        render json: animals
    end

    def show
        animal = Animal.find(params[:id])
        render json: animal
    end

    def create 
        animal = Animal.create(animal_params)
        render json: animal
    end

    

    private 
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
end
