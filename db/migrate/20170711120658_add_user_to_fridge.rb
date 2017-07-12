class AddUserToFridge < ActiveRecord::Migration[5.0]
  def change
      add_column :fridges, :user_id, :integer
  end
end
