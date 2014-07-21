class HomeController < ApplicationController
	def welcome
		render 'welcome'
	end

	def hi
		render 'hi'
	end
end
