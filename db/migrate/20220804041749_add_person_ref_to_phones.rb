class AddPersonRefToPhones < ActiveRecord::Migration[7.0]
  def change
    add_reference :phones, :person, null: true, foreign_key: true
  end
end
