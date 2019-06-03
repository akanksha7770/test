class ExpensesController < InheritedResources::Base

 def index
   @expenses = Expense.all

 end


def filter
	
	a=params[:date][:start_date]
	xc=params[:date][:end_date] 

end


def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to expense_path, notice: 'Expense Created Successfully.'
    else
      render 'new'
    end
  end
  private

    def expense_params
      params.require(:expense).permit(:start_date, :end_date, :category_id, :price)
    end

end
