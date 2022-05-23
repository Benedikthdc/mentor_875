class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :title
      t.text :description
      t.string :expertise
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
