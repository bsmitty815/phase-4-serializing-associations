class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :description, :poster_url, :category, :discount
  
  # adding the belongs to gets you the directors attributes
  # localhost:3000/movies/1
  belongs_to :director
  has_many :reviews
end
