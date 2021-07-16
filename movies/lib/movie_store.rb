require 'yaml/store'
require_relative 'movie'

class MovieStore
  attr_reader :store

  def initialize
    @store = YAML::Store.new('movie.yml')
  end

  def save(movie)
    store.transaction do
      unless movie.id
        movie.id = store.roots.size + 1
        store[movie.id] = movie
      end
    end
  end

  def all
    store.transaction do
      store.roots.map { |id| store[id] }
    end
  end

  def find(id)
    store.transaction do
      store[id]
    end
  end
end
