class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :members
      t.text :description
      t.integer :year
      t.string :image_url
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
