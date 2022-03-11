class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, comment: "Table Categories" do |t|
      t.string :name, null: false, comment: "Category name"
      t.boolean :status, null: false, default: 1, comment: "Check if category is active (1) or not (0)"
      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
