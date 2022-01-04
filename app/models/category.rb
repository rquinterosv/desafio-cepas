class Category < ApplicationRecord
    has_many :categorywines
    has_many :wines, through: :categorywines
end
