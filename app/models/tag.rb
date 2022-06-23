class Tag < ApplicationRecord
  has_many :tag_games_rerationships, dependent: :destroy
  has_many :games, through: :tag_games_rerationships, dependent: :destroy
end
