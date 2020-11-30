class House < ApplicationRecord
  has_many :gardeners,
    class_name: 'Gardener',
    foreign_key: :house_id,
    primary_key: :id

  has_many :plants,
    through: :gardeners,
    source: :plants

  def n_plus_one_seeds
    plants = self.plants
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds
  end

  def better_seeds_query
    # TODO: your code here
    plants = self.first.plants.includes(:seeds)
    all_seeds = []

    plants.each do |plant|
      all_seeds << plants.seeds
      # tracks_count[album] = album.tracks.length
    end
    all_seeds
  end
end
