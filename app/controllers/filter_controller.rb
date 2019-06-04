class FilterController < ApplicationController

	def index
		start_date=params[:date][:start_date]
	    end_date=params[:date][:end_date] 
	    @total_sum= Expense.where(date:"start_date".."end_date").sum(:price)
	
	end

	def filter
	start_date=params[:date][:start_date]
	end_date=params[:date][:end_date] 
	@total_sum= Expense.where(date:"start_date".."end_date").sum(:price)
	redirect_to expense_path

end

	def create

	end
end