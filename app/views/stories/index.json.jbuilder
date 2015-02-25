json.array!(@stories) do |story|
  json.extract! story, :id, :title, :user_id, :link
  json.url story_url(story, format: :json)
end
