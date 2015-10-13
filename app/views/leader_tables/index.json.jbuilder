json.array!(@leader_tables) do |leader_table|
  json.extract! leader_table, :id, :leaderId, :holderId
  json.url leader_table_url(leader_table, format: :json)
end
