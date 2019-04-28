class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      add_column :users, :passwords
      t,string "name"
      t.integer "balance"
      t.integer "user_id"
      t.timestamps
    end
  end
end
