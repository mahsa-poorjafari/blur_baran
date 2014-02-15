class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title_fa
      t.string :title_en
      t.text :text_html_fa
      t.text :text_html_en
      t.string :link

      t.timestamps
    end
  end
end
