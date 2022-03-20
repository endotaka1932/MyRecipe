class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.string :url
      t.text :info
      t.text :content
      t.integer :category
      t.timestamps
    end
  end
end
