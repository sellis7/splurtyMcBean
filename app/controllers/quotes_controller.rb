class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new 	# new "action" for user to submit to database
		@quote = Quote.new
	end

	def create
		@quote = Quote.create(quote_params)
		if @quote.invalid? 	# user error message
			flash[:error] = '<strong>Quote will not be stored.</strong> Your entry is invalid.'
		end
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end

end
