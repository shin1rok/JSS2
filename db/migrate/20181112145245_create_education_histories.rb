class CreateEducationHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :education_histories do |t|
      t.references :profile, foreign_key: true, index: true
      t.string :school_name, null: false
      t.date :entrance_date, null: false
      t.date :graduation_date
      t.integer :status, null: false, comment: '状態(入学予定1、在学2、卒業3、休学4、退学5)'
      t.timestamps
    end
  end
end
