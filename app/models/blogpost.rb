# Blogpost model
# Created using the builtin Rails command
# `bin/rails generate model Blogpost title:string text:text`
class Blogpost < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5, maximum: 120 }
  validates :text, presence: true, length: { minimum: 15, maximum: 2500 }
end
