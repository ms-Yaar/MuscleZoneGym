class AddColumnToSwappers < ActiveRecord::Migration[7.1]
  def change

    add_reference :swappers, :admin, foreign_key: true, null: true


  end
end
