class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea_name
      t.text :description
      t.text :customer
      t.text :problem
      t.text :business_model
      t.boolean :i_have_experience_in_this_field
      t.boolean :i_am_passionate_in_this_field
      t.boolean :i_have_hobbies_that_are_related_to_this_field
      t.integer :rank
      t.integer :enthusiasm
      t.references :user, index: true

      t.timestamps
    end
  end
end
