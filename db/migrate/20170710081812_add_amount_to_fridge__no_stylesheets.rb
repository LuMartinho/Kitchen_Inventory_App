class AddAmountToFridgeNoStylesheets < ActiveRecord::Migration[5.0]
  def change
    add_column :fridges, :Amount, :integer
  end
end
