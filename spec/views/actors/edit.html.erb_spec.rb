require 'spec_helper'

describe "actors/edit" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :name_en => "MyString",
      :name_zh => "MyString",
      :location_id => 1
    ))
  end

  it "renders the edit actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actors_path(@actor), :method => "post" do
      assert_select "input#actor_name_en", :name => "actor[name_en]"
      assert_select "input#actor_name_zh", :name => "actor[name_zh]"
      assert_select "input#actor_location_id", :name => "actor[location_id]"
    end
  end
end
