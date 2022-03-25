class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.all
    # render carted_products
    render json: {message: "index"}
  end

  def show
    # carted_product = CartedProduct.find_by(id: params[:id])
    # render carted_product
    carted_products = CartedProduct.find_by(id: 1)
    render json: {message: "show"} 
  end

  def create
    carted_products = CartedProduct.create
    render json: {message: "create"}
  end

  def update
    carted_product = CartedProduct.update
    render json: {message: "update"}
  end

  def destroy
    # carted_product = CartedProduct.find_by(id: params[:id])
    # render carted_product
    carted_products = CartedProduct.find_by(id: 1)  
    render json: {message: "destroy"}
  end
  
end
