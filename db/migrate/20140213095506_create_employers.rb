class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :title_fa
      t.string :title_en
      t.string :web_site

      t.timestamps
    end
  end
end
