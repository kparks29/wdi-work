class Cell
  include Mongoid::Document
  field :val, type: String
  
  embedded_in :row
end
