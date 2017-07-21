class ParksController < ApplicationController

  def index

    if params[:name]
      @parks = Park.search_by_name(params[:name])
    elsif params[:state]
      @parks = Park.search_by_state(params[:state])
    elsif params[:sq_miles]
      @parks = Park.search_by_sq_miles(params[:sq_miles])
    elsif params[:fauna]
      @parks = Park.search_by_fauna(params[:fauna])
    elsif params[:year]
      @parks = Park.search_by_year(params[:year])
    elsif params[:order_by] === "oldest"
      @parks = Park.order_by_oldest()
    elsif params[:search] === "random"
      @parks = Park.random_park()
    else
      @parks = Park.all
    end
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, 201)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "Your park has been updated!"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy!
      render status: 200, json: {
        message: "Your park has been deleted!"
      }
    end
  end

private
  def park_params
    params.permit(:name, :sq_miles, :state, :year, :fauna)
  end
end
