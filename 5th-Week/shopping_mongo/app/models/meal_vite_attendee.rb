class MealViteAttendee
  include Mongoid::Document
  field :notes, type: String
  
  belongs_to :user
  belongs_to :meal_vite
end
