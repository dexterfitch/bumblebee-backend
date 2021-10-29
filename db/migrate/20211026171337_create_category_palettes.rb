class CreateCategoryPalettes < ActiveRecord::Migration[6.1]
  def change
    create_table :category_palettes do |t|
      t.integer :category_id
      t.integer :palette_id
    end
  end
end
