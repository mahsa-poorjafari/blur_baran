class Resource < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "150x150>" }
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
