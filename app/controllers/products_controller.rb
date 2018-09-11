class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def alert_js
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  private
  def product_params
    params.require(:prodct).permit(:name, :price)
  end
end
