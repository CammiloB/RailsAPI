class Selection < ApplicationRecord
    belongs_to :user
    belongs_to :album

    scope :album_user, ->(id){where(user_id:id)}
  scope :find_album, ->(id){find(id)}
end
