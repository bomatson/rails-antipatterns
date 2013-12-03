json.array!(@songs) do |song|
  json.extract! song, :title, :genre
  json.url song_url(song, format: :json)
end
