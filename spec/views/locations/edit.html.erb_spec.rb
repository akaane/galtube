require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name_en => "MyString",
      :name_zh => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_name_en", :name => "location[name_en]"
      assert_select "input#location_name_zh", :name => "location[name_zh]"
    end
  end
end
