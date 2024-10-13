class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_secure_password
  enum role: [:reader, :writer, :admin]
  
  has_many :articles
  has_many :comments
  
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
end