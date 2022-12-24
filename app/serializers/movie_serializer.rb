class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :summary, :director, :release_date, :would_watch_again
end
