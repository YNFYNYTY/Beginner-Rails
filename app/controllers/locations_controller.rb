class LocationsController < ApplicationController


	def index
		@locations = Location.order(created_at: :desc).limit(10)
		rescue ActiveRecord::RecordNotFound
			render 'not_location_found'
	end

	def show
		@locations = Location.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			render 'not_found'
	end
end




