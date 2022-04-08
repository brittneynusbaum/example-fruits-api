class FruitsController < ApplicationController
  def index
    fruits = Fruit.all
    render json: fruits.as_json
  end

  def create
    fruit = Fruit.new(
      name: params[:name],
      color: params[:color],
      flavor: params[:flavor],
      image: params[:image]
    )
    fruit.save
    render json: fruit.as_json
  end

  def show
    fruit = Fruit.find(params[:id])
    render json: fruit.as_json
  end

  def update
    fruit = Fruit.find(params[:id])
    fruit.name = params[:name] || fruit.name
    fruit.color = params[:color] || fruit.color
    fruit.flavor = params[:flavor] || fruit.flavor
    fruit.image = params[:image] || fruit.image
    fruit.save
    render json: fruit.as_json
  end

  def destroy
    fruit = Fruit.find(params[:id])
    fruit.destroy
    render json: {message: "successfully deleted!"}
  end
  
end
