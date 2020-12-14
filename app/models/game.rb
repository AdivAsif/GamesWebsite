class Game < ApplicationRecord
  belongs_to :list, optional: true
  validates :name, presence: true
  validates :name, uniqueness: true
end
