class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.references :recipe, null: false
      t.float :taste
      t.float :easily
      t.float :cost
      t.boolean :revenge
      t.timestamps
    end
  end
end
