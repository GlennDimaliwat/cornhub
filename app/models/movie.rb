class Movie < ApplicationRecord
    # Title should be present
    validates :title, presence: true

    # Year should be a whole number
    validates :year_released, numericality: { only_integer: true }
end
