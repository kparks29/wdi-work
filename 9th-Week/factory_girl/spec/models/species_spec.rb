require 'spec_helper'

describe Species do
  describe 'validations' do
  	context 'when name is not unique' do
  		it 'has errors on :name' do
  			species1 = FactoryGirl.create :species
  			species2 = FactoryGirl.build :species, name: species1.name
  			expect(species2).not_to be_valid
  		end
  	end
  end
end

