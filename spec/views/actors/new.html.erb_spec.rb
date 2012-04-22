require 'spec_helper'

describe "actors/new" do
  before(:each) do
    assign(:actor, stub_model(Actor,
      :name_en => "MyString",
      :name_zh => "MyString",
      :location_id => 1
    ).as_new_record)
  end

  it "renders new actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actors_path, :method => "post" do
      assert_select "input#actor_name_en", :name => "actor[name_en]"
      assert_select "input#actor_name_zh", :name => "actor[name_zh]"
      assert_select "input#actor_location_id", :name => "actor[location_id]"
    end
  end
end
