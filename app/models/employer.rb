# encoding: UTF-8
class Employer < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>", :icon => "40x40>" }
  has_many :projects
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان کارفرما تکراری است'}
  validates :title_fa, :title_en, :presence => {:message => 'عنوان کارفرما را بنویسید'}
  
   def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
