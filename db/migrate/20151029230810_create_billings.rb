class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :passenger_id
      t.string :first_name
      t.string :last_name
      t.string :card_type
      t.integer :card_number
      t.integer :card_secret_code
      t.date :card_exp
      t.integer :street_num
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
