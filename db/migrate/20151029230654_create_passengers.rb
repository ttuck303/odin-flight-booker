class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthdate
      t.integer :phone

      t.timestamps null: false
    end
  end
end
