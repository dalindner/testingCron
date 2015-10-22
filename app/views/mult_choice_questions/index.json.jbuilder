json.array!(@mult_choice_questions) do |mult_choice_question|
  json.extract! mult_choice_question, :id
  json.url mult_choice_question_url(mult_choice_question, format: :json)
end
