json.array!(@ideas) do |idea|
  json.extract! idea, :id, :idea_name, :description, :customer, :problem, :business_model, :i_have_experience_in_this_field, :i_am_passionate_in_this_field, :i_have_hobbies_that_are_related_to_this_field, :rank, :enthusiasm, :user_id
  json.url idea_url(idea, format: :json)
end
