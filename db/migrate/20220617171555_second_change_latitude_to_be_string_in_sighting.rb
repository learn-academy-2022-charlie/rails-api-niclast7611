class SecondChangeLatitudeToBeStringInSighting < ActiveRecord::Migration[7.0]
  def change
    change_column :sightings, :latitude, :string
  end
end
