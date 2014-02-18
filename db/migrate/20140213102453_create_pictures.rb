class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.text :description_fa
      t.integer :project_id
      t.timestamps
    end
  end
end
