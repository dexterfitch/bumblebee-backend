class CategoryPalette < ActiveRecord::Base
    belongs_to :palette
    belongs_to :category
end