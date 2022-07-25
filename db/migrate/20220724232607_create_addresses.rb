class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :street
      t.text :town
      t.text :zip_code
      t.text :state
      t.text :country

      t.timestamps
    end
  end
end
