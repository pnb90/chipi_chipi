class Api::ProductsController < ApplicationController
  def index
    @products = Product.all 
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           weight: params[:weight],
                           upc_code: params[:upc_code]
                           )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])


    @product.name = params[:name] || @product.name,
    @product.weight = params[:weight] || @product.weight,
    @product.upc_code = params[:upc_code || @product.upc_code]

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Successfully removed product."}
  end
end
