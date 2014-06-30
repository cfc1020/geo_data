class CreateExes < ActiveRecord::Migration
  def change
    create_table :exes do |t|
      t.string :name

      t.timestamps
    end
  end
end
