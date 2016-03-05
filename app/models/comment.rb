class Comment < ActiveRecord::Base
  belongs_to :idea
  validates :idea, presence: true
end
