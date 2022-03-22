class OrdersController < ApplicationController

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      description: params[:description],
      quantity: params[:quantity]
    )
    product.save
  end

  def show
    product = Product.find_by(id: params[:id])
    # render json: product.as_json
    render template: "products/show"
  end

  def index
    products = Product.all
    render json: products.as_json
    # render template: "products/index"
  end


  
end
