class Album < ApplicationRecord
    has_many :lyric
    has_many :selection
    has_many :author, through: :song

    validates :name, presence:true
  validates :name, length: { minimum: 5 }
  validates :image, presence:true
  validates :image, length: { minimum: 15 }
  validates :date, presence:true

  scope :search_album, ->(id){ find(id) }
end
