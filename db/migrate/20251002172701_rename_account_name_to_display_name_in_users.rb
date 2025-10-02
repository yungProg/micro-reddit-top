class RenameAccountNameToDisplayNameInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :account_name, :display_name
  end
end
