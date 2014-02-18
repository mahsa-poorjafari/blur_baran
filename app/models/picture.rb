class Picture < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "150x150>" }
  belongs_to :project
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
  
end
