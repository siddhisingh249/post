class User < ApplicationRecord
  has_many :posts, :dependent => :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def username
    email.split('@')[0].capitalize           
  end       
end
