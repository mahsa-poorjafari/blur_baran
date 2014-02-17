# encoding: UTF-8
class Team < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "150x150>" }
  validates :email, :name_fa, :name_en, :presence => {:message => 'فیلد های ستاره دار را پر کنید'}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'ایمیل نامعتبر است.' } 
  
  def name
    I18n.locale == :fa ? self.read_attribute("name_fa") : self.read_attribute("name_en")
  end
  
  def education
    I18n.locale == :fa ? self.read_attribute("education_fa") : self.read_attribute("education_en")
  end
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description_en")
  end
end
