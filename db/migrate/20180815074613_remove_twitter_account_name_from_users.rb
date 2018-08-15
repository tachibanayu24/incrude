class RemoveTwitterAccountNameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :twitter_account_name, :string
  end
end
