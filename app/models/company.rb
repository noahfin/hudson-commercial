class Company < ApplicationRecord
  belongs_to :companyable, polymorphic: true
  has_many :address, as: :addressable
  has_many :comments, as: :commentable
  has_many :todos, as: :todoable
  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :projects
end
