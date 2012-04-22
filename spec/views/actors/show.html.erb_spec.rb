require 'spec_helper'

describe "actors/show" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :name_en => "Name En",
      :name_zh => "Name Zh",
      :location_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Zh/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
