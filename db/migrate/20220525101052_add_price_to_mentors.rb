class AddPriceToMentors < ActiveRecord::Migration[6.1]
  def change
    add_column :mentors, :price, :integer
  end
end
