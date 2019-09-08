class Genre < ApplicationRecord
    has_many :songs
    has_many :songs, through: :artists
end
