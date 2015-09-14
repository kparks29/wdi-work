class Text

	include Mongoid::Document

	field :message, type: String
	field :number, type: Integer

end