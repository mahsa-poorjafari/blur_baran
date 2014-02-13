class AddAttachmentLogoToEmployers < ActiveRecord::Migration
  def self.up
    change_table :employers do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :employers, :logo
  end
end
