class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers do |t|
      t.references :company, foreign_key: true, index: true
      t.string :title, null: false
      t.text :content, null: false
      t.integer :status, null: false, default: 2, commnet: '状態(募集中1、募集一時停止2、募集終了3)'
      t.integer :public_status, null: false, default: 2, commnet: '公開ステータス(公開1、非公開2)'
      t.timestamps
    end
  end
end
