class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	# NOT USED - added modal window
	# def new 	# new "action" for user to submit to database
	# 	@quote = Quote.new
	# end

	def create
		@quote = Quote.create(quote_params)

		if @quote.invalid? 	# user error message
			flash[:error] = '<strong>The quote will not be stored.</strong> Your entry is invalid.'
		else
			flash[:notice] = '<span class="glyphicon glyphicon-ok"></span><strong> Thank you!</strong> Your entry has been saved.'
		end
		redirect_to root_path
	end

	def about
	end

	def show
		@quote = Quote.where(:id => params[:id]).first
		if @quote.blank?
			render :text => "Not Found", :status => :not_found
		end
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end

end
