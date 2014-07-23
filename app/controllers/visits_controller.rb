class VisitsController < ApplicationController
	def index
		@locations = Location.find(params[:location_id])
		@visits = @locations.visits
	end
	def new
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new
	end

	def create
	   @location = Location.find(params[:location_id])
	   @visit = @location.visits.new(visit_params)
	     if @visit.save
	        redirect_to action: 'index', controller: 'visits',
	        location_id: @location.id
	     else
	     	@visits
	        render 'new'
	     end
	end

	def show
		@locations = Location.find(params[:location_id])
		@visits = @locations.visits.find(params[:id])
			rescue ActiveRecord::RecordNotFound
			render 'not_location_found'
	end


	private

	    def visit_params
		  params.require(:visit).permit(:user_name, :from_date, :to_date)
		end
end

