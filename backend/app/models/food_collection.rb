class FoodCollection < ApplicationRecord
	validates :association_name, presence: true, length: { minimum: 3, maximum: 50 }
	validates :collect_date, presence: true
	validates :description, length: { maximum: 500 }
end

##@## where the FoodCollection model is defined with its attributes