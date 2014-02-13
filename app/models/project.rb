class Project < ActiveRecord::Base
  belongs_to :project_category  
  belongs_to :employer
  has_many :pictures
end
