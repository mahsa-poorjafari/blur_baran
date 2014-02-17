class ProjectCategory < ActiveRecord::Base
  has_attached_file :sample_pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :projects
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
