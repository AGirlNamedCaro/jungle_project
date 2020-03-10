class User < ActiveRecord::Base

  has_secure_password
  
  

  
  validates :password, :password_confirmation, presence: true
  validates :password, :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true
  validates :password, :length => { :minimum => 5}


end
