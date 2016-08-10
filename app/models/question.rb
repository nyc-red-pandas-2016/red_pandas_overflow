class Question < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, as: :voteable

  validates :title, presence: true
  validates :body, presence: true


end
