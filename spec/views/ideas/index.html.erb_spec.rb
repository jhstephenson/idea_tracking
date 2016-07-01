require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :idea_name => "Idea Name",
        :description => "MyText",
        :customer => "MyText",
        :problem => "MyText",
        :business_model => "MyText",
        :i_have_experience_in_this_field => false,
        :i_am_passionate_in_this_field => false,
        :i_have_hobbies_that_are_related_to_this_field => false,
        :rank => 2,
        :enthusiasm => 3,
        :user => nil
      ),
      Idea.create!(
        :idea_name => "Idea Name",
        :description => "MyText",
        :customer => "MyText",
        :problem => "MyText",
        :business_model => "MyText",
        :i_have_experience_in_this_field => false,
        :i_am_passionate_in_this_field => false,
        :i_have_hobbies_that_are_related_to_this_field => false,
        :rank => 2,
        :enthusiasm => 3,
        :user => nil
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "tr>td", :text => "Idea Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
