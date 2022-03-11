json.results @categories do |category|
  json.call(category, :id, :name, :status)
end
