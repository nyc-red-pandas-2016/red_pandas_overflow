class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :comments
  has_many :votes, as: :voteable

  validates :body, presence: true
  validates :author, presence: true
  # Remember to create a migration!
end
