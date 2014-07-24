module ApplicationHelper

	def flash_message
		if flash[:notice]
	 		flash[:notice]
	 	elsif flash[:martin]
	 		flash[:martin]
	 	end
	end

end
