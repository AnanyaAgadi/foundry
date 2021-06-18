class CreateProds < ActiveRecord::Migration[5.2]
  def change
    create_table :prods do |t|
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
