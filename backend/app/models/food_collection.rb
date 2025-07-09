class FoodCollection < ApplicationRecord
	validates :association_name, presence: true, length: { minimum: 2, maximum: 50 }
	validates :collect_date, presence: true
	validates :description, length: { maximum: 500 }
	has_many :indicator_values, dependent: :destroy

end

##@## where the FoodCollection model is defined with its attributes