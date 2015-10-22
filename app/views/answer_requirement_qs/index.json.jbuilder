json.array!(@answer_requirement_qs) do |answer_requirement_q|
  json.extract! answer_requirement_q, :id, :answer1, :answer2, :answer3
  json.url answer_requirement_q_url(answer_requirement_q, format: :json)
end
