class Todo < ApplicationRecord
  belongs_to :todoable, polymorphic: true
  has_many :comments, as: :commentable
  has_and_belongs_to_many :users
end
