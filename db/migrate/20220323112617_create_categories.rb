class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.references :recipe, null: false
      t.string :foodclass
      t.timestamps
    end
  end
end
