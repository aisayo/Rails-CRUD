class CreateRestaurantsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.belongs_to :category
      t.belongs_to :location
    end
  end
end
