class VisitsController < ApplicationController
	def index
		@locations = Location.find(params[:location_id])
		@visits = @locations.visits
	end
	def new
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new
	end

	def show
		@locations = Location.find(params[:location_id])
		@visits = @locations.visits.find(params[:id])
	end
end

