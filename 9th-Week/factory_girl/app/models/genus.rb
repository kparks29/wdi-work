class Genus < ActiveRecord::Base
  belongs_to :family

  validates :name, uniqueness: true
end
