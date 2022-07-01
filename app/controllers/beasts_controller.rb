class BeastsController < ApplicationController

  def index
    @beasts = Beast.all
    json_response(@beasts)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def beast_params
    params.permit(:daemon, :breed, :name, :age, :desc, :available)
  end
end