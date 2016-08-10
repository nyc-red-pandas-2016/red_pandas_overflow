class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :votes, as :voteable

  validates :body, presence: true
end
