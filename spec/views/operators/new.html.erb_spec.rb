require 'spec_helper'

describe "operators/new" do
  before(:each) do
    assign(:operator, stub_model(Operator,
      :email => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new operator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => operators_path, :method => "post" do
      assert_select "input#operator_email", :name => "operator[email]"
      assert_select "input#operator_password", :name => "operator[password]"
    end
  end
end
