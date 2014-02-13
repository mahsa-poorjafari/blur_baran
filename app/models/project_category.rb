class ProjectCategory < ActiveRecord::Base
  has_attached_file :sample_pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
