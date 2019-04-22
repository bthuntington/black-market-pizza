class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      add_column :users, :passwords
      t.timestamps
    end
  end
end
