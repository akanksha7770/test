class Expense < ApplicationRecord
	 belongs_to :category
	  #validates :date, presence: true
	  #validates :category_id, presence: true
	  #validates :name, presence: true

  scope :expense_between, ->(start_date, end_date) { where(date: start_date..end_date) }

end
 
  #Expense.new.errors[:date].any? # => false
  #Expense.create.errors[:date].any? # => true
 # Expense.new.errors[:category_id].any? # => false
 # Expense.create.errors[:category_id].any? # => true

	

