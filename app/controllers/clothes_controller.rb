class ClothesController < ApplicationController

    def new
        @cloth= Cloth.new
    end

    def create
        Cloth.create(cloth_params)
        redirect_to new_product
    end

    def show
        @cloth = Cloth.find(params[:id])
    end

    private

    def cloth_params
        params.require(:cloth).permit(:product, :cost)
    end
end
