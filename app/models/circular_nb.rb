class CircularNb < ApplicationRecord
  validates :value, numericality: { only_integer: true , :greater_than => 0 }, :presence => true, length: { maximum: 5 }
end
