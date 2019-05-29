class Expense < ApplicationRecord
	 belongs_to :category
	 validates :date, presence: true
	 validates :category_id, presence: true
end
 
 Expense.new.errors[:date].any? # => false
 Expense.create.errors[:date].any? # => true
 Expense.new.errors[:category_id].any? # => false
 Expense.create.errors[:category_id].any? # => true

	

