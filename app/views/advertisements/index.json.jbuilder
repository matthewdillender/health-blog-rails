
json.array!(@advertisements) do |advertisement|
  json.partial! advertisement
end
