json.extract! expense, :id, :date, :category_id, :price, :created_at, :updated_at
json.url expense_url(expense, format: :json)
