class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  belongs_to :question

  belongs_to :answer

  has_many :votes, as: :voteable

  validates :body, presence: true
end
