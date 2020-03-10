class User < ActiveRecord::Base

  has_secure_password
  
  def create
    if @user = User.authenticate_with_credentials(params[:email], params[:password])
      
    else
      nil
    end
  end

  
  validates :password, :password_confirmation, presence: true
  validates :password, :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true
  validates :password, :length => { :minimum => 5}
  validates :authenticate_with_credentials, presence: true


end
