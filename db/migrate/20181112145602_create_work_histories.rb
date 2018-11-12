class CreateWorkHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :work_histories do |t|
      t.references :profile, foreign_key: true, index: true
      t.string :company_name, null: false
      t.date :join_date, null: false
      t.date :leave_date
      t.integer :status, null: false, comment: '状態(入社予定1、在職2、退職済み3、休職4、解雇5)'
      t.timestamps
    end
  end
end
