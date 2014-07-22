class VisitsController < ApplicationController
	def index
		@locations = Location.find(params[:locations_id])
		@visits = @locations.visits
	end

	def show
		@locations = Location.find(params[:locations_id])
		@visits = @locations.visits.find(params[:id])

	end
end

