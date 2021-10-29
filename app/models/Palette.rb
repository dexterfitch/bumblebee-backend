class Palette < ActiveRecord::Base
    has_many :category_palettes
    has_many :categories, through: :category_palettes
end