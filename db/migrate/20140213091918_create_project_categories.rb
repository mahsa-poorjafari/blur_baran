class CreateProjectCategories < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
      t.string :title
      t.text :description
      t.string :title_fa
      t.text :description_fa

      t.timestamps
    end
  end
end
