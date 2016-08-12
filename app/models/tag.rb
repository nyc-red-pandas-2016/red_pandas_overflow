class Tag < ActiveRecord::Base
  belongs_to :taggable, polymorphic: true

  belongs_to :question
  belongs_to :answer

  validates :name, presence: true
end
