class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, :format   => { :with => email_regex },
					  :uniqueness => { :case_sensitive => false }

  validates :nom, presence: true
  validates :prenom, presence: true
  validates :promotion, presence: true
  validates :tel, presence: true

  validates :password, :confirmation => true,
                       :length       => { :within => 6..30 }
  validates :password_confirmation, :presence => true
end