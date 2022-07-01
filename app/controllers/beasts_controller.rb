class BeastsController < ApplicationController

  def index
    @beasts = Beast.all
    json_response(@beasts)
  end

  def show 
    @beast = Beast.find(params[:id])
    # binding.pry
    json_response(@beast)
  end

  def create 
    @beast = Beast.create!(beast_params)
    json_response(@beast, :created)
  end

  def update 
    @beast = Beast.find(params[:id])
    if @beast.update(beast_params)
      render status: 200, json: {
        message: "This beast has been updated successfully!"
      }
    end
  end

  private
  def beast_params
    params.permit(:daemon, :breed, :name, :age, :desc, :available)
  end
end