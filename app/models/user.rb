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

  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..30 }
  validates :password_confirmation, :presence => true

  before_save :encrypt_password

  private
    def encrypt_password
      self.password = encrypt(password)
    end
    def secure_hash(string)
    Digest::SHA2.hexdigest(string)
    end
    def encrypt(string)
      secure_hash(string) # Implémentation provisoire !
    end
end