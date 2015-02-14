class User < ActiveRecord::Base
 #Validations  
  validates :name,   presence: true, 
                    length: { maximum: 50 }
                   
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email,  presence: true, 
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  validates :password, presence: true,
                      length: {minimum: 5}
    
  has_secure_password
  #callbacks 
  before_save {self.email = email.downcase}                    
                    
end
