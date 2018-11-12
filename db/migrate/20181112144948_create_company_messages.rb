class CreateCompanyMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :company_messages do |t|
      t.string :message
      t.references :company, foreign_key: true
      t.references :job_seeker, foreign_key: true

      t.timestamps
    end
  end
end
