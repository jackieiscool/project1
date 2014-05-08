require 'spec_helper'

describe Country do
  it 'should add country' do
    country = country.create("sydne22")
    country.should_not be_valid
   
  end

  
end
