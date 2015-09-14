class Authentication

	#belongs_to :user

  include Mongoid::Document
  field :user_id, type: Integer
  field :provider, type: String
  field :uid, type: String
end
