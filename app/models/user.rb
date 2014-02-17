# encoding: UTF-8
class User < ActiveRecord::Base
  
  
  validates  :email, :uniqueness => {:message => 'نام کاربری تکراری است'}
  validates  :email,  :presence => {:message => "نام کاربری را وارد کنید"}
  validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password,
                              message: 'پسورد را اشتباه وارد کردید'
end
