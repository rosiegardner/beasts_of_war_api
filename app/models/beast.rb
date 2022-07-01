class Beast < ApplicationRecord
  validates :daemon, presence: true
  validates :breed, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :desc, presence: true
end