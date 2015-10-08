json.array!(@leader_tables) do |leader_table|
  json.extract! leader_table, :id
  json.url leader_table_url(leader_table, format: :json)
end
