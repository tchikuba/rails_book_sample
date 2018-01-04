class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :sex
      t.integer :active

      t.timestamps
    end
  end
end
