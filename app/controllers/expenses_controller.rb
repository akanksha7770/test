class ExpensesController < InheritedResources::Base

 def index
   @expenses = Expense.all

 end


def filter
	start_date=params[:date][:start_date]
	end_date=params[:date][:end_date] 
	@total_sum= Expense.where(date:"start_date".."end_date").sum(:price)
	redirect_to expense_filters_path

end


def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to expenses_path, notice: 'Expense Created Successfully.'
    else
      render 'new'
    end
  end
  private

    def expense_params
      params.require(:expense).permit(:date, :category_id, :price)
    end

end
