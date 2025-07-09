class IndicatorValue < ApplicationRecord
	belongs_to :indicator_name
	belongs_to :food_collection

end
