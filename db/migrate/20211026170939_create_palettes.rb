class CreatePalettes < ActiveRecord::Migration[6.1]
  def change
    create_table :palettes do |t|
      t.string :title
      t.string :username
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :color4
      t.string :color5
      t.string :url
      t.string :image
    end
  end
end
