class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.date :date
      t.integer :category_id
      t.integer :price

      t.timestamps
    end
  end
end
