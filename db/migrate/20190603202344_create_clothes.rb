class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :product
      t.decimal :cost
      t.integer :user_id

      t.timestamps
    end
    add_index :clothes, :user_id
  end
end
