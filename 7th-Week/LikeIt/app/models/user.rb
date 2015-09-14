class User < ActiveRecord::Base
	has_many :likes
	has_many :items, through: :likes, class_name: "Item"
	has_many :brands, through: :items, class_name: "Brand"
	has_many :categorys, through: :items, class_name: "Category"

before_save :hash_stuff
private

	def hash_stuff

	end
end
