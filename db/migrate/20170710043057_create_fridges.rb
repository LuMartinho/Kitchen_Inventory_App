class CreateFridges < ActiveRecord::Migration[5.0]
  def change
    create_table :fridges do |t|
      t.text :Name
      t.string :Quantity
      t.string :Description

      t.timestamps
    end
  end
end
