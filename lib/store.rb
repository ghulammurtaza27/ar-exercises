class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carries_men_or_women_if_not_both

  def carries_men_or_women_if_not_both
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel_error, "you have to sell eith men or women or both")
    end
  end
end