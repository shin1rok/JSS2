class CreateJobSeekerMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :job_seeker_messages do |t|
      t.string :message
      t.references :job_seeker, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
