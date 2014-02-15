# encoding: UTF-8
class Page < ActiveRecord::Base
  
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  validates :title_fa, :title_en, :presence => {:message => 'عنوان صفحه را بنویسید'}
  

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
  
  def text
    I18n.locale == :fa ? self.read_attribute("text_fa") : self.read_attribute("text_en")
  end
end
