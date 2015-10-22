json.array!(@true_false_questions) do |true_false_question|
  json.extract! true_false_question, :id
  json.url true_false_question_url(true_false_question, format: :json)
end
