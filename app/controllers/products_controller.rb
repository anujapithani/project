class ProductsController < ApplicationController
  def index
    @products = Product.all
end

def new   
   @product = Product.new
end  
def edit
  @product = Product.find(params[:id])
end

def create
  product = Product.new(products_params)
  product.save  
  redirect_to '/products/index'     
end

def update
  product = Product.find(params[:id])
  product.update(products_params)
  redirect_to '/products/index'   
end

private
def products_params
    params.require(:products).permit(:name, :image, :price, :quantity)
end
end
