class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      add_column :Username, :string
      t.timestamps
    end
  end
end
