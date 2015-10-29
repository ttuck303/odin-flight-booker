class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name
      t.string :wac
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
