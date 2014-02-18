class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :title_fa
      t.text :description_fa
      t.integer :employer_id
      t.integer :project_category_id

      t.timestamps
    end
  end
end
