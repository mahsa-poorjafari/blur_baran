# encoding: UTF-8
class Resource < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "200x200>" }
  
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان مقاله تکراری است.'}
  validates :title_fa, :title_en, :presence => {:message => 'عنوان مقاله را بنویسید'}
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
  def text_html
    I18n.locale == :fa ? self.read_attribute("text_html_fa") : self.read_attribute("text_html_en")
  end
end
