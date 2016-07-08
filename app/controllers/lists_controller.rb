class ListsController < ApplicationController
  def index
    render json: List.all.to_json, status: 200
  end

  def show
    if List.exists?(params[:id])
      render json: List.find(params[:id]), status: 200
    else
      render json: { message: "List not found." }, status: 404
    end
  end

  def create
    list = List.new(id: params[:id])

    if list.save
      render json: list.to_json, status: 200
    else
      render json: list.errors.to_json, status: :unprocessable_entity
    end
  end

  def update
    list = List.new(id: params[:id])

    if list.update(id: params[:id])
      render json: list.to_json, status: 200
    else
      render json: list.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
  end
end
