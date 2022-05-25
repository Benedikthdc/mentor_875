class AddLinkedinToMentors < ActiveRecord::Migration[6.1]
  def change
    add_column :mentors, :linkedin, :string
  end
end
