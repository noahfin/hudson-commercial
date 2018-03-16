class Campaign < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  belongs_to :company
  belongs_to :project
  belongs_to :campaignable, polymorphic: true
end
