class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.references :job_seeker, index: { unique: true }, foreign_key: true
      t.text :note, null: false
      t.timestamps
    end
  end
end
