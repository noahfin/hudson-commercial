class Contact < ApplicationRecord
  has_many :address, as: :addressable
  has_many :comments, as: :commentable
  has_many :todos, as: :todoable
  has_and_belongs_to_many :projects
 has_and_belongs_to_many :companies
end
