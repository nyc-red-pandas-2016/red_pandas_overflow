class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable

  validates :body, presence: true
  validates :author, presence: true
  # Remember to create a migration!
end
