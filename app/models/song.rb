class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :chart, optional: true

  def get_artist
    Artist.find_by_id(self.artist_id).name
  end
end
