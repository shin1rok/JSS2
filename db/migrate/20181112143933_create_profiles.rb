class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :job_seeker, index: { unique: true }, foreign_key: true
      t.string :name, null: false
      t.boolean :sex, null: false
      t.date :birthday, null: false
      t.string :address, null: false
      t.text :note
      t.timestamps
    end
  end
end
