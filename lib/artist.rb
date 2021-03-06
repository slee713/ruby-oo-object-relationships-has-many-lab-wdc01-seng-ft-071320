require_relative "./song.rb"

class Artist
    attr_reader :name, :songs
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.find_all do |song|
            song.artist = self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        Song.new(name).artist = self
    end

    def self.song_count
        Song.all.count
    end
end