class Game < ApplicationRecord
  has_many :tag_games_rerationships, dependent: :destroy
  has_many :tags, through: :tag_games_rerationships, dependent: :destroy
end
