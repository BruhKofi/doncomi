class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
