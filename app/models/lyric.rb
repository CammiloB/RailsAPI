class Lyric < ApplicationRecord
    belongs_to :album
    belongs_to :author

    validates :name, presence:true
  validates :name, length: { minimum: 4 }
  validates :image, presence:true
  validates :image, length: { minimum: 15 }
  validates :date, presence:true
end
