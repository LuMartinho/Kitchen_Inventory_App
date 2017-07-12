class CreateAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :accessories do |t|
      t.string :Name
      t.integer :user_id

      t.timestamps
    end
  end
end
