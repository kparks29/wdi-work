class Equipment
	attr_accessor :serial_number

	def initialize
		@serial_number = "XJ21I7N25662KSJ3P"
		@material = "Metal"
	end


end


class Computer < Equipment
	attr_accessor :model, :brand

	def initialize(brand, model)
		@brand = brand
		@model = model
		@is_mac = false
	end

	def comp_type
		@is_mac ? "Mac" : "Crap"
	end