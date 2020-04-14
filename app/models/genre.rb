class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    
    self.song.length
  end

  def artist_count

    self.artist.length
  end

  def all_artist_names

    self.artist.map(&:name)
  end
end
