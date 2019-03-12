class Api::ListProductsController < ApplicationController
  def index
    @list_products = ListProduct.all 
    render 'index.json.jbuilder'
  end

  def create
    @list_product = ListProduct.new(
                                    list_id: params[:list_id],
                                    product_id: params[:product_id],
                                    quantity: params[:quantity],
                                    status: params[:status],
                                    description: params[:description]
                                    )
    if @list_product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @list_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @list_product = ListProduct.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @list_product = ListProduct.find(params[:id])

    @list_product.list_id = params[:list_id] || @list_product.list_id,
    @list_product.product_id = params[:product_id] || @list_product.product_id,
    @list_product.quantity = params[:quantity] || @list_product.quantity,
    @list_product.status = params[:status] || @list_product.status,
    @list_product.description = params[:description] || @list_product.description
    
    if @list_product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @list_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    list_product = ListProduct.find(params[:id])
    list_product.destroy
    render json: {message: "Successfully removed list_product."}
  end
end
