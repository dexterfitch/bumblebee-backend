class Category < ActiveRecord::Base
    has_many :category_palettes
    has_many :palettes, through: :category_palettes
end