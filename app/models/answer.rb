class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  has_many :tags, as: :taggable

  validates :body, presence: true
  validates :author, presence: true

  validates :best_answer, uniqueness: true, if: :best_answer_is_true?

  def best_answer_is_true?
    best_answer == true
  end
end
