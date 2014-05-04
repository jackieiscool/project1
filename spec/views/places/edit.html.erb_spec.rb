require 'spec_helper'

describe "places/edit" do
  before(:each) do
    @place = assign(:place, stub_model(Place,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", place_path(@place), "post" do
      assert_select "input#place_latitude[name=?]", "place[latitude]"
      assert_select "input#place_longitude[name=?]", "place[longitude]"
      assert_select "input#place_address[name=?]", "place[address]"
      assert_select "textarea#place_description[name=?]", "place[description]"
      assert_select "input#place_title[name=?]", "place[title]"
    end
  end
end
