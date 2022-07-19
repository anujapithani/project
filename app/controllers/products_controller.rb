class ProductsController < ApplicationController
before_action :check_login
    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def show
      @products = Product.find(params[:id])
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        redirect_to '/products'
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to '/products'
    end

    def create
        @product = Product.new(product_params)
        @product.save 
        redirect_to '/products'
    end  

    private
    def product_params
        params.require(:product).permit(:name, :price, :image, :quantity)
    end
end
