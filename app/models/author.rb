class Author < ApplicationRecord
    has_many :lyric

    validates :name, presence:true

    scope :search_author, ->(id){ find(id) }
end
