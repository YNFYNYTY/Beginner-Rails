module VisitsHelper

	def flash_message
		if flash[:message]
	 		flash[:message]
	 	elsif flash[:martin]
	 		flash[:martin]
	 	end
	end

end
