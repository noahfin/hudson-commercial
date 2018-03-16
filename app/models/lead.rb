class Lead < ApplicationRecord
  belongs_to :leadable, polymorphic: true
  belongs_to :user
end
