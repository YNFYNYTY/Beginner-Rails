class VisitsController < ApplicationController

	def index
		@location = Location.find(params[:location_id])
		@visits = @location.visits
		flash[:message] = "HEll"
	end
	def new
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new
	end

	def edit
		@location = Location.find(params[:location_id])
		@visit = Visit.find(params[:id])
	end

	def create
	   @location = Location.find(params[:location_id])
	   @visit = @location.visits.new visit_params
	     if @visit.save
	     	@visit = @location.visits
	     	flash[:message] = "HEllo"
	        redirect_to action: 'new', controller: 'visits',
	        location_id: @location.id
	     else
	     	@visit = @locations.visits
	        render 'new'
	     end
	end

	def show
		@location = Location.find(params[:location_id])
		@visits = @location.visits.find(params[:id])
			# rescue ActiveRecord::RecordNotFound
			# render 'not_visit_found'
	end

	def destroy
		location = Location.find(params[:location_id])
		@visit = location.visits.find(params[:id]).destroy
		redirect_to action:  'index'
	end


	# def	update
	#   	@location = Location.find(params[:location_id])
 #      	@visit = Visit.find(params[:id])

 #      	if @visit.update_attributes visit_params
	# 		redirect_to action:  'index'
	#   	else
	#  		render 'edit'
	#  	end
	# end




	private

	def visit_params
		  params.require(:visit).permit(:user_name, :from_date, :to_date)
	end
end

