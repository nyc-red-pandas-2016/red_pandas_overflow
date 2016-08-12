class User < ActiveRecord::Base
  has_secure_password

  has_many :questions
  has_many :comments
  has_many :votes, as: :voteable
  validates :username, presence: true, uniqueness: true
  validate :username_not_cat
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true
  validate :email_format

  def username_not_cat
    if !username.include?("cat") && !username.include?("meow")
      errors.add(:username, " must contain the word 'cat' or 'meow'.")
    end
  end

  def email_format
    if !email.include?("@") && !email.include?(".com")
      errors.add(:email, " must be in the proper format.")
    end
  end
end
