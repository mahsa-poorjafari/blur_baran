class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name_en
      t.string :name_fa
      t.text :education_fa
      t.text :education_en
      t.text :email
      t.text :description_fa
      t.text :description_en

      t.timestamps
    end
  end
end
