class Item

	attr_accessor :name, :price, :url

	def initialize(name, price, url)
		@name = name 
		@price = price
		@url = url
	end

end

class Brand

	attr_accessor :name, :items

	def initialize(name)
		@name = name 
		@items = []
	end

end


require 'net/http'

require 'uri'
require 'json'

@uri = URI.parse('http://api.shopstyle.com/api/v2/products?pid=uid404-24629898-59&format=JSON&offset=0&limit=100&cat=dresses')
@response = Net::HTTP.get_response(@uri)
@value = JSON.parse(@response.body)
@y = []
@x = []
@value["products"].each do |v|

	@x << Item.new(v["name"], v["price"], v["clickurl"])
	if v["brand"] != nil 
	 	if @y.any? { |brand_name| 
	 		if brand_name.name == v["brand"]["name"]
	 			brand_name.items << @x.last
	 		end
	 		}
	 	else


			@y << Brand.new(v["brand"]["name"])
			@y.last.items << @x.last

		end
	end

end

puts @y[6].items.length
