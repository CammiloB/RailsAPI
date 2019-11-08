class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.belongs_to :album, null: false, foreign_key: true
      t.string :name
      t.string :image
      t.date :date
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
