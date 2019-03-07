class Api::StoresController < ApplicationController
  def index
    @stores = Store.all 
    render 'index.json.jbuilder'
  end

  def create
    @store = Store.new(
                           name: params[:name],
                           address: params[:address],
                           hours: params[:hours]
                           )
    if @store.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @store.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @store = Store.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @store = Store.find(params[:id])

    @store.name = params[:name] || @store.name,
    @store.address = params[:address] || @store.address,
    @store.hours = params[:hours] || @store.hours

    if @store.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @store.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    store = Store.find(params[:id])
    store.destroy
    render json: {message: "Successfully removed store."}
  end
end
