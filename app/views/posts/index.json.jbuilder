json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.content post.content
  json.author_name post.author_name
  json.category_id post.category_id
  json.published_at post.published_at
end
