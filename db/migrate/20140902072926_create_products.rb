class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :client
      t.string :name
      t.string :oh
      t.string :pos
      t.string :asin
      t.string :sku

      t.timestamps
    end
  end
end
