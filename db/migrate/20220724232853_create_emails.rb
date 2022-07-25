class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.text :email_address
      t.text :comment

      t.timestamps
    end
  end
end
