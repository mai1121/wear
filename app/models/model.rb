class Model < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  # アソシエーション後に追加
end
