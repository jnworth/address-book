class AddSalutationToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :salutation, :string
  end
end
