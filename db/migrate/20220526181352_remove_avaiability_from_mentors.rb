class RemoveAvaiabilityFromMentors < ActiveRecord::Migration[6.1]
  def change
    remove_column :mentors, :avaiability, :string
  end
end
