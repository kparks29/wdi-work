class DriverShift
  include Mongoid::Document
  has_many :orders
  belongs_to :driver
  belongs_to :shift

end
