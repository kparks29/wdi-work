class Driver
  include Mongoid::Document
  field :name, type: String

  has_many :drivershifts
end
