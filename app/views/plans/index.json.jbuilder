json.array! @plans do |plan|
  json.id plan.id
  json.name plan.name
  json.description plan.description
  json.price plan.price
  json.duration plan.duration
end