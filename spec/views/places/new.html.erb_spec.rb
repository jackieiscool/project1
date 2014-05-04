require 'spec_helper'

describe "places/new" do
  before(:each) do
    assign(:place, stub_model(Place,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", places_path, "post" do
      assert_select "input#place_latitude[name=?]", "place[latitude]"
      assert_select "input#place_longitude[name=?]", "place[longitude]"
      assert_select "input#place_address[name=?]", "place[address]"
      assert_select "textarea#place_description[name=?]", "place[description]"
      assert_select "input#place_title[name=?]", "place[title]"
    end
  end
end
