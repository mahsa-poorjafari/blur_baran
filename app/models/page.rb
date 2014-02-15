# encoding: UTF-8
class Page < ActiveRecord::Base
  
  validates :title, :title_fa, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  validates :title, :title_fa, :presence => {:message => 'عنوان صفحه را بنویسید'}
  

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  
  def text
    I18n.locale == :fa ? self.read_attribute("text_fa") : self.read_attribute("text")
  end
end
