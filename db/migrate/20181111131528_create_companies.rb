class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :tell
      t.integer :employees
      t.decimal :capital
      t.date :establish_date
      t.string :url
      t.float :average_age

      t.timestamps
    end
  end
end
