class Row
  include Mongoid::Document
  
  embeds_many :cells
  embedded_in :board
end
