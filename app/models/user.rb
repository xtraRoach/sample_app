class User < ActiveRecord::Base
  #Properties
  has_secure_password
  #Callbacks
  before_save { self.email = email.downcase }
 
 #Validations  
 
  #eMail Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,  presence: true,            
                    length: { maximum: 255},   
                    format: { with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }

  #Name Validations
  validates :name,   presence: true, 
                    length: { maximum: 50 }

  #Password Validations
  validates :password, length: { minimum: 6 }
                    
                    
end
