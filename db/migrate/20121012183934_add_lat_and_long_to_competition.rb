class AddLatAndLongToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :latitude, :float
    add_column :competitions, :longitude, :float
    add_column :competitions, :gmaps, :boolean
  end
end
