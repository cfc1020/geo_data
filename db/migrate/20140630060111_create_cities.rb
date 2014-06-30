class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.decimal :latitude, precision: 2, scale: 3
      t.decimal :longitude, precision: 2, scale: 3
      t.references :country, index: true

      t.timestamps
    end
  end
end
