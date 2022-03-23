class CreateRecipeCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_categories do |t|
      t.references :recipe, null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end
