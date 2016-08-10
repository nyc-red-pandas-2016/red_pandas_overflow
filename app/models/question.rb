class Question < ActiveRecord::Base
  belongs_to :user

  has_many :votes, as: :voteable
  has_many :answers

  has_many :comments, as: :commentable

  validates :title, presence: true

  validates :body, presence: true

end
