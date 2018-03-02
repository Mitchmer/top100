class Chart < ApplicationRecord
  has_many :songs

  def top_100
    Song.where(genre: self.name).order(sales: :desc).limit(100)
  end
end
