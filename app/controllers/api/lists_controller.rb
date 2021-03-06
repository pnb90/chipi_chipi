class Api::ListsController < ApplicationController

  def index
    @lists = current_user.lists 
    render 'index.json.jbuilder'
  end

  def create
    @list = List.new(
                     name: params[:name],
                     user_id: current_user.id,
                     store_id: params[:store_id]
                     )
    if @list.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @list = List.find(params[:id])

    @list.name =  params[:name] || @list.name
    @list.user_id = params[:user_id] || @list.user_id
    @list.store_id = params[:store_id] || @list.store_id
    
    if @list.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    list = List.find(params[:id])

    if list.user_id == current_user.id
      list.destroy
      render json: {message: "Successfully removed list."}
    else
      render json: {status: :unauthorized}
    end
  end
end