class CreatePerson < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.text :fname
      t.text :mname
      t.text :lname
      t.text :ssn
      t.text :dob
      t.text :comment

      t.timestamps
    end
  end
end
