class CircularNb < ApplicationRecord
  validates :value, numericality: true, :presence => true
end
