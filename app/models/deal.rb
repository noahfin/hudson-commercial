class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  belongs_to :company
  belongs_to :dealable, polymorphic: true
end
