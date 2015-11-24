class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.text :location
      t.text :lattitude
      t.text :longitude
      t.text :title
      t.text :description
      t.date :date
      t.time :time
      t.number :length_of_job
      t.number :rate_of_pay
      t.number :expires

      t.timestamps null: false
    end
  end
end
