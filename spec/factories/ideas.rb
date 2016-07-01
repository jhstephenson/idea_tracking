FactoryGirl.define do
  factory :idea do
    idea_name "MyString"
    description "MyText"
    customer "MyText"
    problem "MyText"
    business_model "MyText"
    i_have_experience_in_this_field false
    i_am_passionate_in_this_field false
    i_have_hobbies_that_are_related_to_this_field false
    rank 1
    enthusiasm 1
    user nil
  end
end
