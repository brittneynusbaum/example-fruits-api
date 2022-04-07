class FruitsController < ApplicationController
  def index
    render json: {messgae: "testing index"}
  end
end
