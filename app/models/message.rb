# encoding: UTF-8
class Message < ActiveRecord::Base
  validates :email, :name, :message, :presence => {:message => 'فیلد های ستاره دار را پر کنید'}
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'ایمیل نامعتبر است.' } 
end
