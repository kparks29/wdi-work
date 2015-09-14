class Species < ActiveRecord::Base
  belongs_to :genus

  validates :name, uniqueness: true
end
