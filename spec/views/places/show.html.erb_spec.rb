require 'spec_helper'

describe "places/show" do
  before(:each) do
    @place = assign(:place, stub_model(Place,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :description => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Address/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
  end
end
