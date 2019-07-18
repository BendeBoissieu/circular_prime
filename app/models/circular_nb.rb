class CircularNb < ApplicationRecord
  validates :value, numericality: { only_integer: true , :greater_than => 0 }, :presence => true, length: { maximum: 5 }

  extend FriendlyId
  friendly_id :value, use: :slugged

  def self.to_csv(options = { :filename => "circular_primes"})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes
      end
    end
  end

end
