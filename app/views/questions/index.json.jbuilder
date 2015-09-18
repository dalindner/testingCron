json.array!(@questions) do |question|
  json.extract! question, :id, :question, :process
  json.url question_url(question, format: :json)
end
