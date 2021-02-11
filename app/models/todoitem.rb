class Todoitem < ApplicationRecord
  validates :name, presence: true
end
