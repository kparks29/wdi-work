class Order
  include Mongoid::Document
  field :name, type: String
  field :protein, type: String
  field :beans, type: String
  field :salsa, type: String
  field :rice, type: String
  field :cheese, type: String
  field :guac, type: String
  field :scream, type: String
  field :lettuce, type: String
  field :toppings, type: String
end
