class Wine < ApplicationRecord
    has_many :categorywines
    has_many :categories, through: :categorywines
end
