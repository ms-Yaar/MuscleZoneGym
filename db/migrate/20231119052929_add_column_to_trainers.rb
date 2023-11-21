class AddColumnToTrainers < ActiveRecord::Migration[7.1]
  def change

    add_reference :trainers, :admin, foreign_key: true, null: true


  end
end
