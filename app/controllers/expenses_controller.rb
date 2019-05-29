class ExpensesController < InheritedResources::Base
  private

    def expense_params
      params.require(:expense).permit(:date, :category_id, :price)
    end

end
