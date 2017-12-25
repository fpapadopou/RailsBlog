# Model class for blog post comments
class Comment < ApplicationRecord
  belongs_to :blogpost
  validates :user, presence: true, length: { minimum: 5, maximum: 50 }
  validates :text, presence: true, length: { minimum: 10, maximum: 140 }
end
