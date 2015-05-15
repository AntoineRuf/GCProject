class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.integer :creator_id

      t.timestamps null: false
    end
  end
end
