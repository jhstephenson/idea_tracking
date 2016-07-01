require 'rails_helper'

RSpec.describe "ideas/show", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Idea Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
