class Trip
  include Mongoid::Document
  field :location, type: String
  field :dives, type: Integer
  field :description, type: String
end
