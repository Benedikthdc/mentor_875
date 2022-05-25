class AddAvaiabilityToMentors < ActiveRecord::Migration[6.1]
  def change
    add_column :mentors, :avaiability, :string
  end
end
