class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :title
      t.string :sport
      t.text :location
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.integer :max_competitors
      t.datetime :registration_expiration
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
