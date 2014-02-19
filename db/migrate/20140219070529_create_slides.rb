class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.text :description_fa
      t.text :description_en

      t.timestamps
    end
  end
end
