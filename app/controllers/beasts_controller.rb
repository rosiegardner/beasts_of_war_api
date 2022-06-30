class BeastsController < ApplicationController

  def index
    @beasts = {"quotation": "beasts api is running."}
    json_response(@beasts)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end