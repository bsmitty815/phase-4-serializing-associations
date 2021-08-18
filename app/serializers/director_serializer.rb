class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace, :female_director

  # adds the movies attributes to the director
  # localhost:3000/directors/:id
  has_many :movies, serializer: DirectorMovieSerializer
                  # this calls on another serializer to pass in only certain information
                  # we tell it to pass through
end
