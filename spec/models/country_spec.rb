require 'spec_helper'

describe Country do
  it 'should add country' do
    # Country should be capitalized because we are refering to the class
    # Also, you need to pass arguments into create as ley value pairs
    country = Country.create(title: "sydney")
    country.should be_valid
   
  end

  
end
