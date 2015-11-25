class CreateJobpostings < ActiveRecord::Migration
  def change
    create_table :jobpostings do |t|
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :title
      t.string :description
      t.date :start_date
      t.time :start_time
      t.string :length
      t.decimal :rate_of_pay
      t.integer :expires
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
