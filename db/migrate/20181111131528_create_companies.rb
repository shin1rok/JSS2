class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, null: false, commnet: '会社名'
      t.string :address, null: false, commnet: '住所'
      t.string :email, null: false, commnet: 'email'
      t.string :tell, null: false, commnet: 'tell'
      t.integer :employees, null: false, 　default: 0, commnet: '従業員数'
      t.decimal :capital, scale: 0, commnet: '資本金'
      t.date :establish_date, null: false, commnet: '設立日'
      t.string :url, null: false, commnet: 'URL'
      t.float :average_age, null: false, commnet: '平均年齢'
      t.timestamps
    end
  end
end
