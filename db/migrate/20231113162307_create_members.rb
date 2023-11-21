class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :username
      t.integer :age
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
