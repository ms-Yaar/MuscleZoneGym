class AddColumnToMembers < ActiveRecord::Migration[7.1]
  def change
   add_reference :members, :trainer, foreign_key: true, null: true
   add_reference :members, :admin, foreign_key: true, null: true
   
   #add_column :products, :part_number, :string

    #add_column :members, :admin_id, :integer, null:true  
    #add_column :members, :trainer_id, :integer, null:true


    # add_foreign_key :members, :trainers, column: :trainer_id, null: true

    # add_foreign_key :members, :trainers,  column: :trainers_id, null:true
    # add_foreign_key :members, :admins,  column: :admin_id, null:true

  end
end
