class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.text :description
      t.float :price
      t.belongs_to :neighborhood, index: true, foreign_key: true
      t.belongs_to :host, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
