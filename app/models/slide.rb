# encoding: UTF-8
class Slide < ActiveRecord::Base
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
   has_attached_file :image, :styles => { :small => "150x150", :slide => "730x400^"}
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description_en")
  end
  
  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
  
  def check_limit
    p Slide.count
    self.errors.add(:base, "حد اکثر میتوانید #{MAX_SLIDES} اسلاید داشته باشید!") if Slide.count > MAX_SLIDES     
  end 

end
