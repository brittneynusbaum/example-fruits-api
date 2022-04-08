class FruitsController < ApplicationController
  def index
    fruits = Fruit.all
    render json: fruits.as_json
  end

  def create
    fruit = Fruit.new(
      name: params[:name],
      color: params[:color],
      flavor: params[:flavor]
    )
    fruit.save
    render json: fruit.as_json
  end

  def show
    fruit = Fruit.find(params[:id])
    render json: fruit.as_json
  end
  
end
