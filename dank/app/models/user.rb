class User < ActiveRecord::Base
  #hsp will give us functionalities needed for user authentication: it will add attribute_accessors passsword, password_confirmation. It will add a validation for password presence, and length of password (4..72). if password confirmation is set, it will validate that it is the same as password. it will add handy methods for us tp automatically hash the password to the password_digest field and compare a given password
  has_secure_password

  has_many :questions, dependent: :nullify

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  def full_name
    "#{first_name} #{last_name}"
  end
end
