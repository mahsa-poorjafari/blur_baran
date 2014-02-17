class AddFeildToProject < ActiveRecord::Migration
  def change
    add_column :projects, :title_fa, :string
    add_column :projects, :description_fa, :text
  end
end
