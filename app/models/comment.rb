class Comment < ApplicationRecord
  validates :text, presence: true, length: {in: 1..50}
  validates :color, presence: true
  validates :size, presence: true
end
