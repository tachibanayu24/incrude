class AddTwitterIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :twitter_id, :string
  end
end
