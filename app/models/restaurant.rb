class Restaurant < ApplicationRecord
    belongs_to :location, optional: true
    belongs_to :category
    validates :name, presence: true

    def category_name=(name)
        category = Category.find_or_create_by(name: name)
        self.category = category 
    end 

    def category_name
        self.category ? self.category : nil
    end 
end 