class Board
  include Mongoid::Document
  field :name, type: String
  field :x_turn, type: Mongoid::Boolean

  embeds_many :rows
end
