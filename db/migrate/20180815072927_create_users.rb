class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :twitter_account_name
      t.integer :count

      t.timestamps
    end
  end
end
