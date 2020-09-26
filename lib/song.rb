require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'

class Song

  include Memorable::InstanceMethods, Paramable
  extend Memorable::ClassMethods, Findable

  attr_accessor :name, :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

end
