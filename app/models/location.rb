class Location < ApplicationRecord
    has_many :restaurants
    has_many :categories, through: :restaurants
end
