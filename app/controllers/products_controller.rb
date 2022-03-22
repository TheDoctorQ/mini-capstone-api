class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products.as_json
    # render template: "products/index"
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
    # render template: "products/show"
  end

  def create
    #happy path
    product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      description: params[:description],
      inventory: params[:inventory]
    )
    product.save
    render template: "products/show"
    
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end

  end


  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    # product.image_url = params[:image_url]
    product.description = params[:description]
    product.save
    render template: "products/show"

    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product removed"}
  end

  def query
    name = params[:name]
    price = params[:price]
    image_url = params[:image_url]
    description = params[:description]
    render json: {message: "This IS the item you are searching for.", name: name, price: price, image_url: image_url, description: description}
  end 

end
