json.array!(@answer_risk_qs) do |answer_risk_q|
  json.extract! answer_risk_q, :id, :answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20, :answer21, :answer22, :answer23, :answer24, :answer25
  json.url answer_risk_q_url(answer_risk_q, format: :json)
end
