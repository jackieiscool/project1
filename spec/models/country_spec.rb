require 'spec_helper'

describe Country do
  it 'should add country' do
    country = country.create("sydney")
    country.should be_valid
   
  end

  
end
