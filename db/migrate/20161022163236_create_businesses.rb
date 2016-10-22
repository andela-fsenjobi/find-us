class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :phone
      t.string :address
      t.string :location
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
