# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :genus do
    family nil
    sequence :name do |n|
    	"Homo#{n}"
    end
  end
end
