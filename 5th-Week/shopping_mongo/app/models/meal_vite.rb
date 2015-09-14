class MealVite


  include Mongoid::Document
  field :location, type: String
  field :time, type: DateTime
  field :is_gluten_free, type: Mongoid::Boolean
  field :is_vegan, type: Mongoid::Boolean

  has_many :meal_vite_attendees
end
