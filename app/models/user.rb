class User < ActiveRecord::Base
   before_save { self.email = email.downcase } #Turn email address into downcase, before saving it into database

  validates(:name, presence: true, length: { maximum: 50 })

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i #Verify if the form of email is correct
  validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })

  has_secure_password
  validates :password, length: { minimum: 6 }
end
