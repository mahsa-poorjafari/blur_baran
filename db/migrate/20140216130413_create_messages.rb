class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :email
      t.text :message
      t.string :name
      t.text :phone
      t.boolean :visited

      t.timestamps
    end
  end
end
