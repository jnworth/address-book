class AddPersonRefToEmails < ActiveRecord::Migration[7.0]
  def change
    add_reference :emails, :person, null: true, foreign_key: true
  end
end
