class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.text :phone_number
      t.text :comment

      t.timestamps
    end
  end
end
