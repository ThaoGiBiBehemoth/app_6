class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable
        #,  :validatable  #  validate cua devise

  validates :name, uniqueness: { case_sensitive: true }, presence: true, length: {maximum: 50}
  validates :email, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, length: {maximum: 255}

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end