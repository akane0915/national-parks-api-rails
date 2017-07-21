class ActivitiesController < ApplicationController

  def index
    @park = Park.find(params[:park_id])
    json_response(@park.activities)
  end

  def create
    @park = Park.find(params[:park_id])
    json_response(@park.activities.create!(activity_params), :created)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    if @activity.destroy!
      render status: 200, json: { message: "Your activity has successfully been deleted." }
    end
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if @activity.update!(activity_params)
      render status: 200, json: { message: "Your activity has successfully been updated." }
    end
  end

  def show
    json_response(Activity.find(params[:id]))
  end

private

  def activity_params
    params.permit(:name, :description)
  end

end
