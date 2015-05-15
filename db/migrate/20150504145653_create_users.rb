class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.integer :promotion
      t.string :email
      t.string :tel
      t.boolean :is_admin
      t.string :password

      t.timestamps null: false
    end
  end
end
