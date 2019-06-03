class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
    end

    def create
        Product.create(product_params)
        redirect_to root_path
    end

    def show
        @product = Product.find(params[:id])
    end

    private

    def product_params
        params.require(:product).permit(:product, :cost)
    end
end
