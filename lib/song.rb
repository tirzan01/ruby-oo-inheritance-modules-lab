require 'pry'

class Song

  extend Memorable::CLASS_METHOD, Findable::FIND_BY_NAME
  include Paramable::Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
