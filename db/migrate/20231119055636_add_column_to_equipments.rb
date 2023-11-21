class AddColumnToEquipments < ActiveRecord::Migration[7.1]
  def change

    add_reference :equipments, :admin, foreign_key: true, null: true


  end
end
