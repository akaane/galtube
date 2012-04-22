require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :title_en => "MyString",
      :title_zh => "MyString",
      :description => "MyText",
      :duration => 1,
      :published => false,
      :hit => 1,
      :actor_id => 1
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => videos_path, :method => "post" do
      assert_select "input#video_title_en", :name => "video[title_en]"
      assert_select "input#video_title_zh", :name => "video[title_zh]"
      assert_select "textarea#video_description", :name => "video[description]"
      assert_select "input#video_duration", :name => "video[duration]"
      assert_select "input#video_published", :name => "video[published]"
      assert_select "input#video_hit", :name => "video[hit]"
      assert_select "input#video_actor_id", :name => "video[actor_id]"
    end
  end
end
