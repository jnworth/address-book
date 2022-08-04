class AddPersonRefToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :person, null: true, foreign_key: true
  end
end
