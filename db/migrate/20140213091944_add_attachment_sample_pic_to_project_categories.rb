class AddAttachmentSamplePicToProjectCategories < ActiveRecord::Migration
  def self.up
    change_table :project_categories do |t|
      t.attachment :sample_pic
    end
  end

  def self.down
    drop_attached_file :project_categories, :sample_pic
  end
end
