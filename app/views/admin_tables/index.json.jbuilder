json.array!(@admin_tables) do |admin_table|
  json.extract! admin_table, :id, :adminId, :holderId
  json.url admin_table_url(admin_table, format: :json)
end
