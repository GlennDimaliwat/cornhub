class Movie < ApplicationRecord
    validates :title, presence: true
    validates :year_released, numericality: { only_integer: true }
end
