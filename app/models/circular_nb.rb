class CircularNb < ApplicationRecord
  validates :value, numericality: { only_integer: true }, :presence => true
end
