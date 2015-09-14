# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :species do
    genus
    sequence :name do |n|
    	"Sapien#{n}"
    end
    locomotion "MyString"
    number_of_legs 1
  end
end
