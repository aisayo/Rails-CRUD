class Category < ApplicationRecord
    has_many :restaurants
    has_many :locations, through: :restaurants
end
