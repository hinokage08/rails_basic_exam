class RemoveIconFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :icon, :text
  end
end
