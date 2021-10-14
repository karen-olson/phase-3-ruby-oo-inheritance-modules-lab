# require 'pry'

class Artist
  # Import the Memorable module and use methods as class methods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def initialize
    # @@songs << self
    super
    @songs = []
  end

  def self.all
    @@songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
