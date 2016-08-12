class Tag < ActiveRecord::Base
  belongs_to :taggable, polymorphic: true

  belongs_to :question
  belongs_to :answer

  validates :name, presence: true

  # def self.search_by_tag(tag_array, tag)
  #   tag_array.find_all do |tag|
  #     /#{tag}/ =~ tag.name
  #   end
  # end
end
