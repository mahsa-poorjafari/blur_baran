# encoding: UTF-8
class Project < ActiveRecord::Base
  
  belongs_to :project_category  
  belongs_to :employer
  has_many :pictures
  
  validates :employer_id, :presence => {:message => 'کارفرما را مشخص کنید.'}
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
