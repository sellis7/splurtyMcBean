class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new 	# new "action" for user to submit to database
		@quote = Quote.new
	end
end
