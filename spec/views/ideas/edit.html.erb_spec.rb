require 'rails_helper'

RSpec.describe "ideas/edit", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
      :idea_name => "MyString",
      :description => "MyText",
      :customer => "MyText",
      :problem => "MyText",
      :business_model => "MyText",
      :i_have_experience_in_this_field => false,
      :i_am_passionate_in_this_field => false,
      :i_have_hobbies_that_are_related_to_this_field => false,
      :rank => 1,
      :enthusiasm => 1,
      :user => nil
    ))
  end

  it "renders the edit idea form" do
    render

    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do

      assert_select "input#idea_idea_name[name=?]", "idea[idea_name]"

      assert_select "textarea#idea_description[name=?]", "idea[description]"

      assert_select "textarea#idea_customer[name=?]", "idea[customer]"

      assert_select "textarea#idea_problem[name=?]", "idea[problem]"

      assert_select "textarea#idea_business_model[name=?]", "idea[business_model]"

      assert_select "input#idea_i_have_experience_in_this_field[name=?]", "idea[i_have_experience_in_this_field]"

      assert_select "input#idea_i_am_passionate_in_this_field[name=?]", "idea[i_am_passionate_in_this_field]"

      assert_select "input#idea_i_have_hobbies_that_are_related_to_this_field[name=?]", "idea[i_have_hobbies_that_are_related_to_this_field]"

      assert_select "input#idea_rank[name=?]", "idea[rank]"

      assert_select "input#idea_enthusiasm[name=?]", "idea[enthusiasm]"

      assert_select "input#idea_user_id[name=?]", "idea[user_id]"
    end
  end
end
