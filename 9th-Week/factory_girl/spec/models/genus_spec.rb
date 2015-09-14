require 'spec_helper'

describe Genus do
  describe 'validations' do
  	context 'when name is not unique' do
  		it 'has errors on :name' do
  			genus1 = FactoryGirl.create :genus
  			genus2 = FactoryGirl.build :genus, name: genus1.name
  			expect(genus2).not_to be_valid
  		end
  	end
  end
end
