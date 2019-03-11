class Api::InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all 
    render 'index.json.jbuilder'
  end

  def create
    @inventory = Inventory.new(
                     name: params[:name],
                     user_id: params[:user_id],
                     store_id: params[:store_id]
                     )
    if @inventory.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @inventory.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @inventory = Inventory.find(params[:id])

    @inventory.name =  params[:name] || @inventory.name
    @inventory.user_id = params[:user_id] || @inventory.user_id
    @inventory.store_id = params[:store_id] || @inventory.store_id
    
    if @inventory.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @inventory.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    inventory = Inventory.find(params[:id])
    inventory.destroy
    render json: {message: "Successfully removed inventory."}
  end
end
