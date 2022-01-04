class Categorywine < ApplicationRecord
  belongs_to :category
  belongs_to :wine
end
