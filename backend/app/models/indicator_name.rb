class IndicatorName < ApplicationRecord
	has_many :indicator_values, dependent: :destroy
end
